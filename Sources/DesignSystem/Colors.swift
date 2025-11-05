//
//  Colors.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 04/11/2025.
//

import SwiftUI

public let gradientSkyBlueToDarkBlue: LinearGradient = .init(
    gradient: Gradient(colors: [Colors.skyBlue, Colors.darkBlue]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

public let gradientDarkBlueToSkyBlue: LinearGradient = .init(
    gradient: Gradient(colors: [Colors.darkBlue, Colors.skyBlue]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

enum Colors {
    static let skyBlue = Color("SkyBlue", bundle: .module)
    static let darkBlue = Color("DarkBlue", bundle: .module)
}
