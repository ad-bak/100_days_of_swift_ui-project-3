//
//  Score.swift
//  RockPaperScissorsApp
//
//  Created by Adnan Bakaev  on 19/05/2025.
//

import SwiftUI

struct Score: View {
    var score: Int
    @Binding var showingAlert: Bool

    var body: some View {
        Text("Score: \(score)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .scaleEffect(showingAlert ? 1.2 : 1.0)
            .animation(.easeOut(duration: 0.2), value: showingAlert)

    }
}

#Preview {
    Score(score: 20, showingAlert: .constant(false))
}
