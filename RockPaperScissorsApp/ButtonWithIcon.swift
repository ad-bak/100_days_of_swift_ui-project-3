//
//  ButtonWithIcon.swift
//  test
//
//  Created by Adnan Bakaev  on 18/05/2025.
//

import SwiftUI

struct ButtonWithIcon: View {
    var icon: String
    var isSelected: Bool = false
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: icon)
                .resizable()
                .padding()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(isSelected ? .black : Color(.lightGray))
                .background(.white)
                .cornerRadius(10)
                .scaleEffect(isSelected ? 1.1 : 1.0)
                .shadow(
                    color: isSelected ? .black.opacity(0.3) : .clear,
                    radius: 5
                )
                .animation(
                    .spring(response: 0.3, dampingFraction: 0.5),
                    value: isSelected
                )
        }
    }
}

#Preview {
    ButtonWithIcon(icon: "scissors", isSelected: false) {}
}
