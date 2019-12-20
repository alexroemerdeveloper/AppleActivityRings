//
//  ContentView.swift
//  AppleActivityRings WatchKit Extension
//
//  Created by Alexander Römer on 20.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showRedStroke = false
    @State private var showGreenStroke = false
    @State private var showBlueStroke = false


    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.black, .black]), center: .center, startRadius: 5, endRadius: 500)
            Circle() // Red
                .trim(from: showRedStroke ? 1/8 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 158, height: 158)
                .foregroundColor(Color(red: 0.859, green: 0.014, blue: 0.092))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true))
                .onAppear() {
                    self.showRedStroke.toggle()
            }//.offset(y: -130)
            
            
            Circle() // Green
                .trim(from: showGreenStroke ? 1/3 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 118, height: 118)
                .foregroundColor(Color(red: 0.618, green: 0.968, blue: -0.013))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true))
                .onAppear() {
                    self.showGreenStroke.toggle()
            }
            
            
            Circle() // Blue
                .trim(from: showBlueStroke ? 1/6 : 1, to: 1)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 78, height: 78)
                .foregroundColor(Color(red: 0.002, green: 0.884, blue: 0.842))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .black, radius: 20, y: 5)
                .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true))
                .onAppear() {
                    self.showBlueStroke.toggle()
            }
        }
        .offset(y: 10)
        .edgesIgnoringSafeArea(.all)
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
