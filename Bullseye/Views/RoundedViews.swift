//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Patrik Kántor on 2023. 01. 30..
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .stroke(Color("ButtonStrokeColor"), lineWidth: 4)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}


struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
         }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView().preferredColorScheme(.dark)
    }
}
