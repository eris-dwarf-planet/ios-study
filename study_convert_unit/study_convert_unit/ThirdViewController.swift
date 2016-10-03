//
//  ThirdViewController.swift
//  study_convert_unit
//
//  Created by kanazawa masahito on 2016/10/02.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewWillAppear(animated: Bool) {
        let sunValue = ap.cmValue * 0.33
        dataTextField.text = String(sunValue)
    }
    
    @IBAction func tapInput(sender: AnyObject) {
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
            if let sunValue = Double(text) {
                ap.cmValue = sunValue / 0.33
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
