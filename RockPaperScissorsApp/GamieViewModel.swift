//
//  GamieViewModel.swift
//  test
//
//  Created by Adnan Bakaev  on 19/05/2025.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published var choice: Move? = nil
    @Published var computerChoice: Move? = nil
    @Published var result: Result = .draw
    @Published var showingAlert = false
    @Published var alertMessage = ""
    @Published var score = 0

    func play(move: Move) {
        choice = move
        computerChoice = Move.allCases.randomElement()

        let outcome = calculateResult(player: choice, computer: computerChoice)
        result = outcome.result
        alertMessage = outcome.message
        score += outcome.scoreChange
        showingAlert = outcome.showAlert
    }

    func resetRound() {
        choice = nil
        computerChoice = nil
    }
}
