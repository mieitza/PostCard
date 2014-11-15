//
//  ViewController.swift
//  PostCard
//
//  Created by Mihai on 11/15/14.
//  Copyright (c) 2014 NextGenIO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
    }

}

