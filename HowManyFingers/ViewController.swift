//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Vijay Xtreme on 5/21/15.
//  Copyright (c) 2015 vijayxtreme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberGuessed: UITextField!
    @IBOutlet weak var answer: UILabel!
    @IBAction func guessResult(sender: AnyObject) {
        
        var randomNum = arc4random_uniform(6)
        println(randomNum)
        
        if numberGuessed.text.toInt() == Int(randomNum) {
            answer.text = "You guessed it!"
        }else {
            answer.text = "Sorry, the number was \(randomNum)"
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

