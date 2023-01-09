//
//  ContentView.swift
//  trafficLights_SwiftUI
//
//  Created by Дмитрий on 09.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.001
    @State private var opacityYellow = 0.001
    @State private var opacityGreen = 0.001
    
    @State private var light = 1
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                LightsView().redCircle.foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                LightsView().yellowCircle.foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                LightsView().greenCircle.foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
                Spacer()
                Button(action: {
                    changeOpacity()
                }, label: {
                    if opacityRed == 1.0 || opacityYellow == 1.0 || opacityGreen == 1.0 {
                        Text ("NEXT")
                    } else {
                        Text("Start")
                    }
                })
                    .frame(width: 180, height: 60)
                    .font(.system(size: 40, weight: .heavy, design: .serif))
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.white, lineWidth: 9))
                    .background(Color.black).cornerRadius(40)
            }
            .padding(.top, 20)
            .padding(.bottom, 180)
        }
    }
    
    private func changeOpacity(){
        
        switch light {
            
        case 1:
            opacityGreen = 0.001
            opacityRed = 1
            light = 2
        case 2 where opacityRed == 1:
            opacityRed = 0.001
            opacityYellow = 1
        case _:
            opacityYellow = 0.001
            opacityGreen = 1
            light = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
