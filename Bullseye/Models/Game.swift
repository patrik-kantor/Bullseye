//
//  Game.swift
//  Bullseye
//
//  Created by Patrik Kántor on 2023. 01. 28..
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(sliderValue - target)
    }
}
