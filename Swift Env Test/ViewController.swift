//
//  ViewController.swift
//  Swift Env Test
//
//  Created by David Wagner on 01/02/2017.
//  Copyright © 2017 David Wagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf.becomeFirstResponder()
    }
}

