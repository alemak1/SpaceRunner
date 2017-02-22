//
//  GameOverScene.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/20/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    //MARK: - Private instance constants
    private let background = Background()
    
    //MARK: Private instance variables
    private var sceneLabel: SKLabelNode?

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
        self.backgroundColor = Colors.colorFromRGB(rgbValue: Colors.background)
        self.addChild(background)
        
        sceneLabel = SKLabelNode(fontNamed: "Arial")
        sceneLabel?.text = "GameOver"
        sceneLabel?.fontSize = 32.0
        sceneLabel?.fontColor = SKColor.white
        sceneLabel?.position = CGPoint(x: kViewSize.width/2, y: kViewSize.height/2)
        self.addChild(sceneLabel!)
        
    }
    
    //MARK: - Update
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    //MARK: - Touch Handling
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch = touches.first! as UITouch
        let touchLoaction = touch.location(in: self)
        if sceneLabel!.contains(touchLoaction){
            loadScene()
        }
        
    }
    
    //MARK: - Load Scene
    private func loadScene(){
        let scene = MenuScene(size: kViewSize)
        let transition = SKTransition.fade(with: SKColor.black, duration: 0.5)
        self.view?.presentScene(scene, transition: transition)
        
        
    }
    
    
}
