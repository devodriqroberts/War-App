//
//  ViewController.swift
//  WarApp
//
//  Created by Devodriq Roberts on 6/13/18.
//  Copyright © 2018 Devodriq Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerCard: UIImageView!
    
    @IBOutlet weak var cpuCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var playerScoreValue = 0
    var cpuScoreValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
   
    @IBAction func dealTapped(_ sender: UIButton) {
        
        //Randomize two numbers
        let playerRandomNumber = arc4random_uniform(13) + 2
        let cpuRandomNumber = arc4random_uniform(13) + 2
        
        //Change the image views
        playerCard.image = UIImage(named: "card\(playerRandomNumber)")
        cpuCard.image = UIImage(named: "card\(cpuRandomNumber)")
        
        //Compare numbers
        if playerRandomNumber > cpuRandomNumber {
            
            //Update Score
            playerScoreValue += 1
            
            //Update Label
            playerScore.text = String(playerScoreValue)
        } else if playerRandomNumber < cpuRandomNumber {
            
            //Update Score
            cpuScoreValue += 1
            
            //Update Label
            cpuScore.text = String(cpuScoreValue)
        }
        
        
        
        
    }
    
}

