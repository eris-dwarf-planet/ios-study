//
//  SecondViewController.swift
//  study_convert_unit
//
//  Created by kanazawa masahito on 2016/10/01.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewWillAppear(animated: Bool) {
        let incValue = ap.cmValue * 0.3937
        dataTextField.text = String(incValue)
    }
    
    @IBAction func tapInput(sender: AnyObject) {
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
            if let incValue = Double(text) {
                ap.cmValue = incValue / 0.3937
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

