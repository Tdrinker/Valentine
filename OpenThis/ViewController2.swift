//
//  ViewController2.swift
//  OpenThis
//
//  Created by Robert Lasell on 2/11/16.
//  Copyright © 2016 Tufts. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    var labelTexts = [String]()
    @IBOutlet weak var continueButton: UIButton!
    var labelIndex = 0
    
    @IBOutlet weak var funButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 20
        funButton.isHidden = true
        
        labelTexts.append("I love you.\n\nSorry that I lied. This number guessing game is not designed for random players.\n\nIt's for you.\n\nI am sure this is the first time of me using the word love.\n\nI never told you I love you because I did not want to be reckless and I had to confirm my feelings for you.\n\nNow I cannot think of a more subtle way or find a better time to tell you.")
        labelTexts.append("In every language, I love you. I am very happy that I chose you and am willing to love and protect you wholeheartedly.\n\n\nHappy Valentine's Day.")
        
        label.text = labelTexts[0]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed (_ sender : AnyObject) -> Void {
        //let button:UIButton = sender as! UIButton
        if (labelIndex == 0) {
            labelIndex += 1
            label.text = labelTexts[labelIndex]
            label.font = label.font.withSize(24)
            funButton.isHidden = false
            continueButton.isHidden = true
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
