//
//  Game.swift
//  Apple Pie
//
//  Created by Mark on 3/8/19.
//  Copyright © 2019 Mark. All rights reserved.
//

import Foundation

struct Game{
    var words: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !words.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    var formattedWord: String{
        var guessedWord = ""
        for letter in words{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
        } else {
            guessedWord += "_"
        }
    }
    return guessedWord
}

}
