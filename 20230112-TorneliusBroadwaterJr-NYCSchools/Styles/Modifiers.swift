//
//  Modifiers.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation
import SwiftUI

struct CustomSection: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding()
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

extension View {
    func customSection() -> some View {
        self.modifier(CustomSection())
    }
}
