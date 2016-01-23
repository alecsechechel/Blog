//
//  ViewController.swift
//  Localization
//
//  Created by Alex on 23.01.16.
//  Copyright © 2016 oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: AnyObject) {
        let alert = UIAlertController(title: NSLocalizedString("TITLE", comment: ""), message: NSLocalizedString("MESSAGE", comment: ""), preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

