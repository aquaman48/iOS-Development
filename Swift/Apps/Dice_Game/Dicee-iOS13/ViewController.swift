//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    var leftDiceNumber = 1
    var rightDiceNumber = 5

    @IBAction func rollButtonPress(_ sender: Any) {
        // stores the images in array as constant. Use let becuase these images and variable will never change.
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // to display random image from array we can do it two different ways. .randomElement or [Int.random(range)
        diceImageViewLeft.image = diceArray.randomElement()
        
        //leftDiceNumber += 1
        
        diceImageViewRight.image = diceArray[Int.random(in: 0...5)]
        //rightDiceNumber -= 1
        
        

    }
    
}

