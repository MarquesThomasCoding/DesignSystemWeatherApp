//
//  Button.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 04/11/2025.
//

import SwiftUI

public struct ButtonPrimary: View {    
    let label: String
    let icon: String?
    let action: () -> Void
    
    public init(label: String, icon: String?, action: @escaping () -> Void) {
        self.label = label
        self.icon = icon
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            if let icon = icon {
                Image(systemName: icon)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.trailing, 8)
            }
            if label != "" {
                Text(label)
            }
        }
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
