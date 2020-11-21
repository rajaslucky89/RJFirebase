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

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        messageLabel.center.x = view.center.x
        messageLabel.center.x -= view.bounds.width
        // animate it from the left to the right
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations: {
            self.messageLabel.center.x += self.view.bounds.width
              self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

