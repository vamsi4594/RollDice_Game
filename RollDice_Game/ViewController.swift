//
//  ViewController.swift
//  RollDice_Game
//
//  Created by 123 on 08/09/20.
//  Copyright © 2020 vamsiOSDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    var DiceImages = [String]()
    var player1Score = 0
    var player2Score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftImageView.layer.cornerRadius = 10
        rightImageView.layer.cornerRadius = 10
        rollButton.layer.cornerRadius = 10
        
        DiceImages = [Constants.shared.DiceOne, Constants.shared.DiceTwo, Constants.shared.DiceThree, Constants.shared.DiceFour, Constants.shared.DiceFive, Constants.shared.DiceSix]
        
    }

    @IBAction func onClickRollBtn(_ sender: UIButton)
    {
        let leftImageIndex = Int.random(in: 0...DiceImages.count-1)
        let rightImageIndex = Int.random(in: 0...DiceImages.count-1)
        leftImageView.image = UIImage(named: DiceImages[leftImageIndex])
        rightImageView.image = UIImage(named: DiceImages[rightImageIndex])
        updateScoreCard(leftImageIndex, rightImageIndex)
    }
    
    func updateScoreCard(_ n1:Int, _ n2:Int) {
        if n1 > n2 {
            player1Score += 1
            player1ScoreLabel.text = String(player1Score)
        }else if n1 < n2 {
            player2Score += 1
            player2ScoreLabel.text = String(player2Score)
        }
        
    }
    
}

