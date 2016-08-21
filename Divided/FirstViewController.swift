//
//  FirstViewController.swift
//  Divided
//
//  Created by Dustin Morando on 8/15/16.
//  Copyright © 2016 Dustin Morando. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.performSegueWithIdentifier("loginView", sender: self);
    }
    
    override func viewDidDisappear(animated: Bool) {
        self.performSegueWithIdentifier("loginView", sender: self)
    }


}



