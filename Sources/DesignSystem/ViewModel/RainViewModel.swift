//
//  RainViewModel.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 06/11/2025.
//

import SwiftUI

struct Raindrop: Identifiable {
    let id = UUID()
    var x: CGFloat
    var y: CGFloat
    var speed: CGFloat
    var length: CGFloat
}
