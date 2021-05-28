//
//  ViewController.swift
//  RPSLS
//
//  Created by Monica Lo on 2021/5/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var pcScoreLabel: UILabel!
    
    @IBOutlet weak var lImage: UIImageView!
    @IBOutlet weak var rImage: UIImageView!
    
    @IBOutlet weak var lAtomImage: UIImageView!
    @IBOutlet weak var rAtomImage: UIImageView!
    
    @IBOutlet weak var lTeamImage: UIImageView!
    @IBOutlet weak var rTeamImage: UIImageView!
    
    @IBOutlet weak var lKoImage: UIImageView!
    @IBOutlet weak var rKoImage: UIImageView!
    
    @IBOutlet weak var rockBtoon: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var lizardButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    
    var playerScoreNumber = 0
    var pcScoreNumber = 0
    
    let leftImages = ["L scissors", "L paper", "L rock", "L lizard", "L spock"]
    let rightImages = ["R scissors", "R paper", "R rock", "R lizard", "R spock"]
    
    func startGame(){
        lTeamImage.isHidden = true
        rTeamImage.isHidden = true
        
        lImage.isHidden = false
        rImage.isHidden = false
        
        lImage.image = UIImage(named: leftImages.randomElement()!)
        
        resultLabel.backgroundColor = .clear
        resultLabel.textColor = UIColor(red: 1/255, green: 25/255, blue: 147/255, alpha: 1)
    }

    func rule(){
        if rImage.image == UIImage(named: rightImages[0]), lImage.image == UIImage(named: leftImages[0]) {
            resultLabel.text = "DRAW"
        } else if rImage.image == UIImage(named: rightImages[0]), lImage.image == UIImage(named: leftImages[1]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[0]), lImage.image == UIImage(named: leftImages[2]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[0]), lImage.image == UIImage(named: leftImages[3]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[0]), lImage.image == UIImage(named: leftImages[4]) {
            resultLabel.text = "U   LOSE"
            
        } else if rImage.image == UIImage(named: rightImages[1]), lImage.image == UIImage(named: leftImages[0]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[1]), lImage.image == UIImage(named: leftImages[1]) {
            resultLabel.text = "DRAW"
        } else if rImage.image == UIImage(named: rightImages[1]), lImage.image == UIImage(named: leftImages[2]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[1]), lImage.image == UIImage(named: leftImages[3]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[1]), lImage.image == UIImage(named: leftImages[4]) {
            resultLabel.text = "U   WIN"
            
        } else if rImage.image == UIImage(named: rightImages[2]), lImage.image == UIImage(named: leftImages[0]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[2]), lImage.image == UIImage(named: leftImages[1]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[2]), lImage.image == UIImage(named: leftImages[2]) {
            resultLabel.text = "DRAW"
        } else if rImage.image == UIImage(named: rightImages[2]), lImage.image == UIImage(named: leftImages[3]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[2]), lImage.image == UIImage(named: leftImages[4]) {
            resultLabel.text = "U   LOSE"
            
        } else if rImage.image == UIImage(named: rightImages[3]), lImage.image == UIImage(named: leftImages[0]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[3]), lImage.image == UIImage(named: leftImages[1]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[3]), lImage.image == UIImage(named: leftImages[2]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[3]), lImage.image == UIImage(named: leftImages[3]) {
            resultLabel.text = "DRAW"
        } else if rImage.image == UIImage(named: rightImages[3]), lImage.image == UIImage(named: leftImages[4]) {
            resultLabel.text = "U   WIN"
            
        } else if rImage.image == UIImage(named: rightImages[4]), lImage.image == UIImage(named: leftImages[0]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[4]), lImage.image == UIImage(named: leftImages[1]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[4]), lImage.image == UIImage(named: leftImages[2]) {
            resultLabel.text = "U   WIN"
        } else if rImage.image == UIImage(named: rightImages[4]), lImage.image == UIImage(named: leftImages[3]) {
            resultLabel.text = "U   LOSE"
        } else if rImage.image == UIImage(named: rightImages[4]), lImage.image == UIImage(named: leftImages[4]) {
            resultLabel.text = "DRAW"
        }
    }
    
    func gameOver(){
        resultLabel.backgroundColor = UIColor(red: 0/255, green: 84/255, blue: 147/255, alpha: 1)
        resultLabel.textColor = .white
        resultLabel.text = "GAME  OVER"
        
        rockBtoon.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        lizardButton.isEnabled = false
        spockButton.isEnabled = false
    }
    
    func score(){
        if resultLabel.text == "U   WIN" {
            playerScoreNumber += 1
            playerScoreLabel.text = "\(playerScoreNumber)"
            
        } else if resultLabel.text == "U   LOSE" {
            pcScoreNumber += 1
            pcScoreLabel.text = "\(pcScoreNumber)"
        }
        
        if playerScoreNumber == 5 {
            rImage.isHidden = true
            rAtomImage.isHidden = false
            rTeamImage.isHidden = false
            lKoImage.isHidden = false
            
            gameOver()
            
        } else if pcScoreNumber == 5 {
            lImage.isHidden = true
            lAtomImage.isHidden = false
            lTeamImage.isHidden = false
            rKoImage.isHidden = false
            
            gameOver()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.layer.borderWidth = 1
        resultLabel.layer.borderColor = UIColor(red: 1/255, green: 25/255, blue: 147/255, alpha: 1).cgColor
    }

    @IBAction func playRock(_ sender: UIButton) {
        rImage.image = UIImage(named: rightImages[2])
        
        startGame()
        rule()
        score()
    }
    
    @IBAction func playPaper(_ sender: UIButton) {
        rImage.image = UIImage(named: rightImages[1])
        
        startGame()
        rule()
        score()
    }
    
    @IBAction func playScissors(_ sender: UIButton) {
        rImage.image = UIImage(named: rightImages[0])
        
        startGame()
        rule()
        score()
    }
    
    @IBAction func playLizard(_ sender: UIButton) {
        rImage.image = UIImage(named: rightImages[3])
        
        startGame()
        rule()
        score()
    }
    
    
    @IBAction func playSpock(_ sender: UIButton) {
        rImage.image = UIImage(named: rightImages[4])
        
        startGame()
        rule()
        score()
    }
    
    @IBAction func startOver(_ sender: UIButton) {
        lTeamImage.isHidden = false
        rTeamImage.isHidden = false
        
        lKoImage.isHidden = true
        rKoImage.isHidden = true
        lImage.isHidden = true
        rImage.isHidden = true
        lAtomImage.isHidden = true
        rAtomImage.isHidden = true
        
        rockBtoon.isEnabled = true
        paperButton.isEnabled = true
        scissorsButton.isEnabled = true
        lizardButton.isEnabled = true
        spockButton.isEnabled = true
        
        playerScoreNumber = 0
        pcScoreNumber = 0
        playerScoreLabel.text = "0"
        pcScoreLabel.text = "0"
        
        resultLabel.backgroundColor = UIColor(red: 0/255, green: 84/255, blue: 147/255, alpha: 1)
        resultLabel.textColor = .white
        resultLabel.text = "R P S L S"
    }
}

