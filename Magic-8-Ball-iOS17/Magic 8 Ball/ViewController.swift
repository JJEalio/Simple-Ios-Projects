//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageball: UIImageView!
    @IBOutlet weak var Question: UITextField!

    let ballArray = [UIImage(imageLiteralResourceName: "ball1"), UIImage(imageLiteralResourceName: "ball2"), UIImage(imageLiteralResourceName: "ball3"),UIImage(imageLiteralResourceName: "ball4"),UIImage(imageLiteralResourceName: "ball5")]
    
    @IBAction func asked(_ sender: UITextField) {
        imageball.image = ballArray.randomElement()
        Question.text = " "
            }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            imageball.image = ballArray.randomElement()
            Question.text = " "
            }
    
    @IBAction func touch(_ sender: UIButton) {
        imageball.image = ballArray.randomElement()
        Question.text = " "
    }
}

