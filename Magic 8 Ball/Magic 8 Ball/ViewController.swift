//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Michael Smith on 12/28/18.
//  Copyright © 2018 Michael Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
            
    newBallImage()
        
    }
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArray [randomBallNumber])
        
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
    
        newBallImage()
    }
        
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
    }
}
