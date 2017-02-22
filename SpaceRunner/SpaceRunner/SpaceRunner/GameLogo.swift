//
//  GameLogo.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import UIKit

class GameLogo: SKSpriteNode {
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    

    override init(texture: SKTexture?, color: UIColor, size: CGSize){
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init() {
        let texture = SKTexture() //Replace with code to get a texture from the atlas
        self.init(texture: texture, color: SKColor.white, size: texture.size())
        setup()
    }
    
    
    private func setup(){
        
    }
}
