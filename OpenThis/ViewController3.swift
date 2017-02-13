//
//  ViewController3.swift
//  OpenThis
//
//  Created by Robert Lasell on 2/11/16.
//  Copyright © 2016 Tufts. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var label: UILabel!
    var labelText = "desk(21)  lies(34)  drawer(5)  right(3)  present(89)  the(2)  your(13)  In(1) of(8)  a(55)\n\n\n\n\n\n(Rearrange the words in the sentence so that they are not gibberish. Try it first, if you can't figure it out, type the numbers attached to the words in increasing order with no spaces in between numbers.)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 30
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed (_ sender : AnyObject) -> Void {
        //let button:UIButton = sender as! UIButton
        let textNumber = Int(textBox.text!)
        if (textNumber == 123581321345589) {
            label.text = "\nIn the right drawer of your desk lies a present\n\n\n\n\n(Did you notice that the numbers you just typed in were a Fibonacci sequence?)\n\n"
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
