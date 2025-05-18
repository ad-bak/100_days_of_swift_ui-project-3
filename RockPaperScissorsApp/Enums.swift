//
//  Enums.swift
//  test
//
//  Created by Adnan Bakaev  on 19/05/2025.
//

import Foundation

enum Result {
    case win
    case lose
    case draw

    var boolValue: Bool? {
        switch self {
        case .win: return true
        case .lose: return false
        case .draw: return nil
        }
    }

    var message: String {
        switch self {
        case .win: return "You win!"
        case .lose: return "You lose!"
        case .draw: return ""
        }
    }
}


enum Move: String, CaseIterable {
    case scissors = "scissors"
    case circleFill = "circle.fill"
    case paperPlane = "paperplane"
}
