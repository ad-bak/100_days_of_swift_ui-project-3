# Rock Paper Scissors Game (SwiftUI)

A small game app built as part of the **100 Days of SwiftUI** challenge by [Paul Hudson](https://www.hackingwithswift.com/100/swiftui).

This is a simple brain-training game based on Rock–Paper–Scissors logic:

- Each round, the app picks a random move
- The player selects their response
- The score increases or decreases based on the result
- A result alert shows win/loss (draws are silent)

### Tech used
- SwiftUI
- MVVM architecture
- Clean, modular structure
- Animations and bindings
- Built with Xcode 15+

### Files
- `ContentView.swift`: main game screen
- `GameViewModel.swift`: handles game state
- `GameLogic.swift`: contains the result logic
- `Move.swift` + `Result.swift`: enums for logic
- `Buttons.swift` + `ButtonWithIcon.swift`: reusable UI components

---

> ✅ Challenge from Day 25 – 100 Days of SwiftUI  
> 🧠 Focus: state, logic, bindings, enums, conditionals  
> 🎯 Goal: make a playable, clean, and professional SwiftUI app

