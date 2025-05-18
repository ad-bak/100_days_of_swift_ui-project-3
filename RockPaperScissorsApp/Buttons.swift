//
//  Buttons.swift
//  test
//
//  Created by Adnan Bakaev  on 18/05/2025.
//

import SwiftUI

struct Buttons: View {
    var bgColor: Color
    @Binding var selectedChoice: Move?
    var onSelect: (Move) -> Void = { _ in }

    private let moves = Move.allCases

    var body: some View {
        VStack(spacing: 100) {
            // Top single button
            makeButton(for: moves[0])

            // Bottom two buttons
            HStack(spacing: 100) {
                makeButton(for: moves[1])
                makeButton(for: moves[2])
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }

    private func makeButton(for move: Move) -> some View {
        ButtonWithIcon(
            icon: move.rawValue,
            isSelected: selectedChoice == move
        ) {
            selectedChoice = move
            onSelect(move)
        }
    }
}

#Preview {
    Buttons(bgColor: .blue, selectedChoice: .constant(.scissors))
}
