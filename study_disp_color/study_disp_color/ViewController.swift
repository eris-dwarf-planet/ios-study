//
//  ViewController.swift
//  study_disp_color
//
//  Created by kanazawa masahito on 2016/10/01.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    let randomSoure: GKARC4RandomSource = GKARC4RandomSource()
    var colorR: Int = 0
    var colorG: Int = 0
    var colorB: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        colorR = randomSoure.nextIntWithUpperBound(256)
        colorG = randomSoure.nextIntWithUpperBound(256)
        colorB = randomSoure.nextIntWithUpperBound(256)
        colorLabel.text = "R=\(colorR), G=\(colorG), B=\(colorB)"

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextvc = segue.destinationViewController as! colorViewController
        nextvc.colorR = colorR
        nextvc.colorG = colorG
        nextvc.colorB = colorB
    }

    @IBAction func returnTop(segue: UIStoryboardSegue) {
        
    }

}

