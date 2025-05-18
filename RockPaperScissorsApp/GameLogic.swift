//
//  GameLogic.swift
//  test
//
//  Created by Adnan Bakaev  on 18/05/2025.
//

import Foundation

func beats(_ move1: Move, _ move2: Move) -> Bool {
    switch (move1, move2) {
    case (.scissors, .paperPlane),
        (.paperPlane, .circleFill),
        (.circleFill, .scissors):
        return true
    default:
        return false
    }
}

struct GameOutcome {
    let result: Result
    let message: String
    let scoreChange: Int
    let showAlert: Bool
}

func calculateResult(player: Move?, computer: Move?) -> GameOutcome {
    guard let player, let computer else {
        return .init(
            result: .draw,
            message: Result.draw.message,
            scoreChange: 0,
            showAlert: false
        )
    }

    if player == computer {
        return .init(
            result: .draw,
            message: Result.draw.message,
            scoreChange: 0,
            showAlert: false
        )
    }

    let result: Result = beats(player, computer) ? .win : .lose
    let scoreChange = result == .win ? 1 : -1

    return .init(
        result: result,
        message: result.message,
        scoreChange: scoreChange,
        showAlert: true
    )
}
