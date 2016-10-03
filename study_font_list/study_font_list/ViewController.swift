//
//  ViewController.swift
//  study_font_list
//
//  Created by kanazawa masahito on 2016/10/03.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var fontName_array: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for fontFamilyName in UIFont.familyNames() {
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName as String) {
                fontName_array.append(fontName as String)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontName_array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "myCell")
        let fontname = fontName_array[indexPath.row]
        cell.textLabel?.font = UIFont(name: fontname, size: 18)
        cell.textLabel?.text = "ABCDE abcde 012345 あいうえお"
        cell.detailTextLabel?.textColor = UIColor.brownColor()
        cell.detailTextLabel?.text = fontname
        return cell
    }

}

