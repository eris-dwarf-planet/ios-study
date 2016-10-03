//
//  FirstViewController.swift
//  study_convert_unit
//
//  Created by kanazawa masahito on 2016/10/01.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewWillAppear(animated: Bool) {
        dataTextField.text = String(ap.cmValue)
    }
    
    @IBAction func tapInput(sender: AnyObject) {
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
            if let cmValue = Double(text) {
                ap.cmValue = cmValue
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

