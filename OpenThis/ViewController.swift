//
//  ViewController.swift
//  OpenThis
//
//  Created by Robert Lasell on 2/11/16.
//  Copyright © 2016 Tufts. All rights reserved.
//

import UIKit
import AVFoundation

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}


class ViewController: UIViewController {
    
//    var player:AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var responseLabel: UILabel!
    
    var backGroundPlayer = AVAudioPlayer()
    
    var labelText = "I have a number in mind.\nCan you guess what it is?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBackGroundMusic(fileNamed: "Lou Shaves Will-Craig Armstrong.mp3")
        
        // Do any additional setup after loading the view, typically from a nib.
        continueButton.isHidden = true
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 2
        label.text = labelText
        responseLabel.isHidden = true
        
    }
    
    func playBackGroundMusic (fileNamed: String){
        
        let url = Bundle.main.url(forResource: fileNamed,withExtension: nil)
        
        guard let newUrl = url else {
            
        print("Could not find filed called \(fileNamed)")
            return
        }
        do {
            backGroundPlayer = try  AVAudioPlayer(contentsOf: newUrl)
            backGroundPlayer.numberOfLoops = -1
            backGroundPlayer.prepareToPlay()
            backGroundPlayer.play()
        }
        catch let error as NSError {
            print(error.description)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed (_ sender : AnyObject) -> Void {
        //let button:UIButton = sender as! UIButton
        let textNumber = Int(textBox.text!)
        responseLabel.isHidden = false
        if (textNumber == 520) {
            responseLabel.text = "That is correct!"
            continueButton.isHidden = false
            //textBox.hidden = true
            nextButton.isHidden = true
        } else if (textNumber < 520) {
            responseLabel.text = "Too small"
        } else {
            responseLabel.text = "Too big"
        }
    }
}

