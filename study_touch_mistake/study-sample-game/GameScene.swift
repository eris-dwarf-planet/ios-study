//
//  GameScene.swift
//  study-sample-game
//
//  Created by kanazawa masahito on 2016/10/03.
//  Copyright (c) 2016年 none. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let randomSource = GKARC4RandomSource()
    var mistakeNo = 0
    
    let msgLabel = SKLabelNode(fontNamed: "HiraKakuProN-W3")
    var msg: String = "違う漢字をタッチしよう"
    let ballMax = 15
    var ballList: [SKShapeNode] = []
    let correct = [
        "人", "巳", "氷", "体", "坂",
        "祝", "間", "困", "理", "科",
        "待", "猫", "鳥", "楽", "簿",
        "緑", "塊", "幕", "態", "微"]
    let mistake = [
        "入", "己", "水", "休", "板",
        "呪", "問", "因", "埋", "料",
        "侍", "錨", "烏", "薬", "薄",
        "縁", "魂", "慕", "熊", "徴"]
    var questionNo = 0
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
//        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
//        myLabel.text = "Hello, World!"
//        myLabel.fontSize = 45
//        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
//        
//        self.addChild(myLabel)
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        self.physicsBody?.restitution = 1.2
        
        self.backgroundColor = UIColor.whiteColor()
        msgLabel.text = msg
        msgLabel.fontSize = 36
        msgLabel.fontColor = UIColor.redColor()
        msgLabel.position = CGPoint(x: 320, y: 1080)
        self.addChild(msgLabel)
        
        newQuestion()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
//        for touch in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchNodes = self.nodesAtPoint(location)
            
            for tNode in touchNodes {
                for loopID in 0..<ballMax {
                    if tNode == ballList[loopID] {
                        print("ball=\(loopID) touch!")
                        answerCheck(loopID)
                        break
                    }
                }
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func newQuestion() {
        questionNo = randomSource.nextIntWithUpperBound(correct.count)
        mistakeNo = randomSource.nextIntWithUpperBound(ballMax)
        ballList = []
 
        for loopID in 0..<ballMax {
            let ball = SKShapeNode(circleOfRadius: 45)
            ball.fillColor = UIColor(red: 1.0, green: 0.9, blue: 0.6, alpha: 1.0)
            ball.position = CGPoint(x: loopID * 100 + 70, y: 1000)
            self.addChild(ball)
            ballList.append(ball)
            
            let kanji = SKLabelNode(fontNamed: "HiraKakuProN-W6")
            if loopID != mistakeNo {
                kanji.text = correct[questionNo]
            } else {
                kanji.text = mistake[questionNo]
            }
            
            kanji.fontSize = 60
            kanji.fontColor = UIColor.blackColor()
            kanji.position = CGPoint(x: 0, y: -25)
            ball.addChild(kanji)
            
//            let action1 = SKAction.moveToY(1300, duration: 0)
//            let wait1 = SKAction.waitForDuration(1.0, withRange: 2.0)
//            let randomSec = Double(randomSource.nextIntWithUpperBound(30)) / 10.0 + 3.0
//            let action2 = SKAction.moveToY(-100, duration: randomSec)
//            let actionS = SKAction.sequence([action1, wait1, action2])
//            let actionR = SKAction.repeatActionForever(actionS)
//            ball.runAction(actionR)
            let wx = randomSource.nextIntWithUpperBound(440) + 100
            let wy = randomSource.nextIntWithUpperBound(200) + 800
            ball.position = CGPoint(x: wx, y: wy)
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 45)
            ball.physicsBody?.restitution = 1.0
            
            let angle = CGFloat(randomSource.nextUniform() * 6.28)
            ball.zRotation = angle

        }
    }
    
    func answerCheck(No: Int) {
        if No == mistakeNo {
            msg = "正解! \(correct[questionNo]) & \(mistake[questionNo])"
        } else {
            msg = "不正解! \(correct[questionNo]) & \(mistake[questionNo])"
        }
        msgLabel.text = msg
        for loopID in 0..<ballMax {
            ballList[loopID].removeFromParent()
        }
        newQuestion()
    }
}
