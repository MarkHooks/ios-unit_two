//
//  ViewController.swift
//  Apple Pie
//
//  Created by Mark on 3/8/19.
//  Copyright © 2019 Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["apple", "tree", "bear", "car", "monguse", "snake", "hat", "texas", "flint", "brian", "daniel", "ryan", "shane", "sarah", "coding", "woodworking", "painting", "chair", "football", "golf", "baseball", "hockey"]
    let incorrectMovesAllowed = 7
    var totalWins = 0{
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet{
            newRound()
        }
    }
    @IBOutlet weak var Treeimageview: UIImageView!
    @IBOutlet weak var correctwordlabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet var letterbuttons: [UIButton]!
    @IBAction func buttonpressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
        }
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.words == currentGame.formattedWord{
            totalWins += 1
        } else{
            updateUI()
        }
    }
  


   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var currentGame: Game!
    func newRound(){
        if !listOfWords.isEmpty{
        let newWord = listOfWords.removeFirst()
        currentGame = Game(words: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters:[])
            enableLetterButtons(true)
        updateUI()
        }else{
            enableLetterButtons(false)
        }
    }
    
    func updateUI() {
        correctwordlabel.text = currentGame.formattedWord
        scorelabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        Treeimageview.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        var letters = [String]()
        for letter in currentGame.formattedWord{
            letters.append(String(letter))
        }
    let wordWithSpacing = letters.joined(separator: " ")
    correctwordlabel.text = wordWithSpacing
    scorelabel.text = "Wins : \(totalWins), Losses: \(totalLosses)"
    Treeimageview.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
}
    func enableLetterButtons(_ enable: Bool){
        for button in letterbuttons {
            button.isEnabled = enable
        }
}
}
