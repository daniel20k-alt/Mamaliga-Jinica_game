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
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
    
    }
    
// testing
    


    
}

