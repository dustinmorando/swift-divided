//
//  RegisterPageViewController.swift
//  Divided
//
//  Created by Dustin Morando on 8/21/16.
//  Copyright © 2016 Dustin Morando. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //Check for empty fields
        if(userEmail?.isEmpty || userPassword?.isEmpty || userRepeatPassword?.isEmpty)
        {
            //Display alert message
            displayMyAlertMessage("All Fields are required");
            
            return
        }
        
        //Check if password and repeat Password match
        if (userPassword != userRepeatPassword)
        {
            //Display alert message
            displayMyAlertMessage("Passwords do not match");
            
            return
        }
        
        //Store data
        
        //Display alert message with conformation
        
        
        
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"OK", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion:nil);
        
        
    }

}
