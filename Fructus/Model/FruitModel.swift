//
//  FruitModel.swift
//  Fructus
//
//  Created by Sithvothy Infinity on 03/08/2022.
//

import SwiftUI

// FRUIT DATA MODEL
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}

