//
//  ViewController.swift
//  study_janken
//
//  Created by kanazawa masahito on 2016/09/26.
//  Copyright © 2016年 none. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    let randomSource = GKARC4RandomSource()
    
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let angle:CGFloat = CGFloat((180.0 * M_PI) / 180.0)
        computerImageView.transform = CGAffineTransformMakeRotation(angle)
    }
    
    @IBAction func tapStart() {
        computerImageView.image = UIImage(named: "janken-item1.png")
        playerImageView.image = UIImage(named: "janken-item1.png")
        messageLabel.text = "じゃんけん！"
    }
    
    @IBAction func tapGu() {
        playerImageView.image = UIImage(named: "janken-item1.png")
        doComputer(0)
    }
    
    @IBAction func tapChoki() {
        playerImageView.image = UIImage(named: "janken-item2.png")
        doComputer(1)
    }
    
    @IBAction func tapPa() {
        playerImageView.image = UIImage(named: "janken-item3.png")
        doComputer(2)
    }
    
    func doComputer(player:Int) {
        let computer = randomSource.nextIntWithUpperBound(3)
        var msg:String = ""
        
        switch computer {
        case 0:
            computerImageView.image = UIImage(named: "janken-item1.png")
            switch player{
            case 0:
                msg = "あいこ"
            case 1:
                msg = "あなたの負け"
            case 2:
                msg = "あなたの勝ち"
            default:
                break
            }
        case 1:
            computerImageView.image = UIImage(named: "janken-item2.png")
            switch player{
            case 0:
                msg = "あなたの勝ち"
            case 1:
                msg = "あいこ"
            case 2:
                msg = "あなたの負け"
            default:
                break
            }
        case 2:
            computerImageView.image = UIImage(named: "janken-item3.png")
            switch player{
            case 0:
                msg = "あなたの負け"
            case 1:
                msg = "あなたの勝ち"
            case 2:
                msg = "あいこ"
            default:
                break
            }
        default:
            break
        }
        messageLabel.text = msg
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

