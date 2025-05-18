//
//  ContentView.swift
//  test
//
//  Created by Adnan Bakaev  on 18/05/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = GameViewModel()
    
    

    var body: some View {
        VStack(spacing: 0) {
            
            // computer
            Buttons(
                bgColor: .blue,
                selectedChoice: .constant(model.computerChoice)
            )
            .allowsHitTesting(false)

            // score
            Score(score: model.score, showingAlert: $model.showingAlert)

            // player
            Buttons(bgColor: .red, selectedChoice: .constant(model.choice)) {
                move in
                model.play(move: move)
            }
        }
        .alert("Result", isPresented: $model.showingAlert) {
            Button("OK", role: .cancel) {
                model.resetRound()
            }
        } message: {
            Text(model.alertMessage)
        }
    }
    
}

#Preview {
    ContentView()
}
