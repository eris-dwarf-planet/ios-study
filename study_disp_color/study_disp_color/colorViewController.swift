//
//  colorViewController.swift
//  study_disp_color
//
//  Created by kanazawa masahito on 2016/10/01.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit

class colorViewController: UIViewController {

    var colorR: Int = 0
    var colorG: Int = 0
    var colorB: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let backColor = UIColor(
            red: CGFloat(colorR) / 256.0,
            green: CGFloat(colorG) / 256.0,
            blue: CGFloat(colorB) / 256.0,
            alpha: 1.0)
        view.backgroundColor = backColor
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
