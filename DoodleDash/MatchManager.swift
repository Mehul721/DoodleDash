//
//  MatchManager.swift
//  DoodleDash
//
//  Created by Mehul Jain on 11/08/24.

import Foundation

class MatchManager: ObservableObject {
    
    @Published var inGame = false
    @Published var isGameOver = false
    @Published var authenticationState = PlayAuthState.authenticating
    @Published var currentlyDrawing = false
    @Published var drawPrompt = ""
    @Published var pastGuesses = [PastGuess]()
    @Published var score = 0
    @Published var remainingTime = maxTimeRemaining
}
