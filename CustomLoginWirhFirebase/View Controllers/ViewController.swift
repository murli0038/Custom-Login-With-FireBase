//
//  ViewController.swift
//  CustomLoginWirhFirebase
//
//  Created by Nikunj Prajapati on 28/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpbtn: UIButton!
    @IBOutlet weak var logInbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        Utilities.styleFilledButton(signUpbtn)
        Utilities.styleHollowButton(logInbtn)
    
        // Do any additional setup after loading the view.
    }
    


}

