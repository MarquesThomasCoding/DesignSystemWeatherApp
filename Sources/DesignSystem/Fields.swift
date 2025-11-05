//
//  Fields.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 05/11/2025.
//

import SwiftUI

public struct SearchField: View {
    public init() {
    }
    
    public var body: some View {
        TextField("field.search.placeholder", text: .constant(""))
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.white.opacity(0.15))
            .foregroundColor(.white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.white.opacity(0.5), lineWidth: 1)
            )
    }
}
