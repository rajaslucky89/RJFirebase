//
//  ViewController.swift
//  RJFirebaseExample
//
//  Created by Raja Syahmudin on 20/11/20.
//  Copyright © 2020 Raja Syahmudin. All rights reserved.
//

import UIKit
import RJFirebase

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let messageValue = RJFirebase.shared.getString(ofKey: .message)
        messageLabel.text = messageValue
    }


}

