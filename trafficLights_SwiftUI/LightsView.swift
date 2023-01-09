//
//  LightsView.swift
//  trafficLights_SwiftUI
//
//  Created by Дмитрий on 09.01.2023.
//

import SwiftUI

struct LightsView: View {
    
    var redCircle: some View {
            setCircle()
        }
        var yellowCircle: some View {
            setCircle()
        }
        var greenCircle: some View {
            setCircle()
        }
    
    var body: some View {
        VStack {
                redCircle
                yellowCircle
                greenCircle
            }
    }
    
    private func setCircle() -> some View{
           return Circle()
                   .frame(width: 120, height: 120)
                   .overlay(Circle().stroke(.white, lineWidth: 3))
       }
}

struct LightsView_Previews: PreviewProvider {
    static var previews: some View {
        LightsView()
    }
}
