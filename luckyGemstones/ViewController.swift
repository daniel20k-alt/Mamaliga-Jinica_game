//
//  ViewController.swift
//  luckyGemstones
//
//  Created by DDDD on 14/08/2019.
//  Copyright © 2019 MeerkatWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
        var rightScore = 0
        var leftScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...17)
        // testing the left random number generation in the console
        // print(leftNumber)
        
        let rightNumber = Int.random(in: 2...17)
        // testing the right random number generation in the console
        // print(rightNumber)
   
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        //updating left image view
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        //updating right image view
        
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

