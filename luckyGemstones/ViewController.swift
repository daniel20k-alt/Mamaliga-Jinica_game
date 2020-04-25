//
//  ViewController.swift
//  Mamaliga & Jin
//
//  Created by DDDD on 14/08/2019.
//  Copyright © 2019 MeerkatWorks. All rights reserved.
//

/*
Game Logic:
 
 Similar to the previous game, two ImageView for cards, except one would be for the players cards, another one for the block of cards.
 
Third imageView would be hidden, with the BOT's cards.
 
 36 cards, form 6 to A, Joker n/a
 
 See how to make transition from you 6 cards into the center deck.
 
 */


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
        var rightScore = 0
        var leftScore = 0
    
    var cozActual: String
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
//        un IBAction func startGame
        
        
//        aici generarea de cards pentru bot
        
        var botsCards: [Int] = []
        
        var randomizedBotsCards = Int.random(in 6...14)
        
        
        
        
        let leftNumber = Int.random(in: 2...17)
        // testing the left random number generation in the console
        // print(leftNumber)
        
        
//        aici generarea de cards pentru User
        
        
        
        let rightNumber = Int.random(in: 2...17)
        // testing the right random number generation in the console
        // print(rightNumber)
   
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        //updating left image view
            leftImageView.transform = CGAffineTransform(rotationAngle: 40)
        leftImageView.transform = CGAffineTransform.identity
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        //updating right image view
        rightImageView.transform = CGAffineTransform(rotationAngle: 40)
           rightImageView.transform = CGAffineTransform.identity
        
        if leftNumber > rightNumber {
            //Left side would win in this case
    leftScore += 1
    leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber < rightNumber {
            //Right side would win in this case
    rightScore += 1
    rightScoreLabel.text = String(rightScore)
            
        } else {
            // i'll leave it to do nothing, this way no points will be added or substracted when it will be equal
        }
    }
      
}

