//
//  Game.swift
//  Apple Pie
//
//  Created by Rens Gingnagel on 10/11/2017.
//  Copyright © 2017 Rens Gingnagel. All rights reserved.
//

import Foundation

struct Game {
    var Word: String
    var inCorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in Word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }

    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !Word.characters.contains(letter) {
            inCorrectMovesRemaining -= 1
        }
    }
}
