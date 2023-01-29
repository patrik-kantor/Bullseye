//
//  ContentView.swift
//  Bullseye
//
//  Created by Patrik Kántor on 2023. 01. 28..
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
                .padding()
            Button {
                alertIsVisible = true
            } label: {
                Text("Hit me".uppercased())
                    .bold()
                    .font(.title3)
            }
                .padding(20.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert("Hello there!", isPresented: $alertIsVisible) {
                  Button("Awesome!") { }
                } message: {
                  let roundedValue = Int(sliderValue.rounded())
                    Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
