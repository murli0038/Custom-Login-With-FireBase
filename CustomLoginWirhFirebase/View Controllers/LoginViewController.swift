//
//  LoginViewController.swift
//  CustomLoginWirhFirebase
//
//  Created by Nikunj Prajapati on 28/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var logInbtn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.alpha = 0
        setUp()
        
        // Do any additional setup after loading the view.
    }
    func setUp()
    {
        Utilities.styleTextField(emailTextFiled)
        Utilities.styleTextField(passwordtextField)
        Utilities.styleFilledButton(logInbtn)
    }
    
    @IBAction func logInTapped(_ sender: Any)
    {
        Auth.auth().signIn(withEmail: emailTextFiled.text!, password: passwordtextField.text!) { (user, error) in
            if user != nil
            {
                let navigation = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                self.navigationController?.pushViewController(navigation!, animated: true)
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
