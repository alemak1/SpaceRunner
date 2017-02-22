//
//  MenuScene.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/20/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    
    //MARK: - Private Instance Variables
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
        self.backgroundColor = SKColor.black
        sceneLabel = SKLabelNode(fontNamed: "Arial")
        sceneLabel?.text = "MenuScene"
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
        
    }
}

