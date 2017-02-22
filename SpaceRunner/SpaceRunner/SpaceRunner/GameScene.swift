//
//  GameScene.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/20/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var sceneLabel: SKLabelNode?
    
    //MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    override func didMove(to view: SKView) {
        self.setup()
    }
    
    
    //MARK: - Setup
    private func setup(){
        self.backgroundColor = SKColor.black
        
        sceneLabel = SKLabelNode(fontNamed: "Arial")
        sceneLabel?.fontColor = SKColor.white
        sceneLabel?.text = "Game currently in play..."
        sceneLabel?.position = CGPoint(x: kViewSize.width/2, y: kViewSize.height/2)
        self.addChild(sceneLabel!)
    }
    
    //MARK: - Update
    override func update(_ currentTime: TimeInterval) {
    }
    
    //MARK: - Touch Handling
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch = touches.first! as UITouch
        let touchLocation = touch.location(in: self)
        
        if(sceneLabel!.contains(touchLocation)){
            loadScene()
        }
        
    }
    
    //MARK: - Load Scene
    private func loadScene(){
        let scene = GameOverScene(size: kViewSize)
        let transition = SKTransition.fade(with: SKColor.black, duration: 0.2)
        self.view?.presentScene(scene, transition: transition)
    }
    
   
}
