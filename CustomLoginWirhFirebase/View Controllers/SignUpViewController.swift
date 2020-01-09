//
//  SignUpViewController.swift
//  CustomLoginWirhFirebase
//
//  Created by Nikunj Prajapati on 28/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController
{
    var ref: DatabaseReference!
    
    @IBOutlet weak var firstNametextFiled: UITextField!
    @IBOutlet weak var lastNametextFiled: UITextField!
    @IBOutlet weak var emailtextFiled: UITextField!
    @IBOutlet weak var passwordtextFiled: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.alpha = 0
        setUp()
        ref = Database.database().reference()

        // Do any additional setup after loading the view.
    }
    
    func setUp()
    {
        Utilities.styleTextField(firstNametextFiled)
        Utilities.styleTextField(lastNametextFiled)
        Utilities.styleTextField(emailtextFiled)
        Utilities.styleTextField(passwordtextFiled)
        Utilities.styleFilledButton(signUpBtn)
    }
    
    @IBAction func signUpTapped(_ sender: Any)
    {
            self.ref.child("users").childByAutoId().setValue(["firstname":firstNametextFiled.text,"lastname":lastNametextFiled.text,"email":emailtextFiled.text,"password":passwordtextFiled.text])
    
        Auth.auth().createUser(withEmail: emailtextFiled.text!, password: passwordtextFiled.text!) { (user, error) in
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
