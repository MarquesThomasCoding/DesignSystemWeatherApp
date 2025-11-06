//
//  Fields.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 05/11/2025.
//

import SwiftUI

public struct SearchField: View {
    private let placeholder: String
    @Binding private var text: String

    public init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }

    public var body: some View {
        TextField(placeholder, text: $text)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.white.opacity(0.15))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white.opacity(0.5), lineWidth: 1)
            )
    }
}
