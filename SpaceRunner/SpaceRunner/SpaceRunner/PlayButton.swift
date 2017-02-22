//
//  PlayButton.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import SpriteKit

class PlayButton: SKSpriteNode {
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize){
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init() {
        let texture = GameTextures.sharedInstance.texture(name: SpriteName.playButton) //Replace with code to get a texture from the atlas
        self.init(texture: texture, color: SKColor.white, size: texture.size())
        setup()
    }
    
    
    private func setup(){
        self.position = CGPoint(x: kViewSize.width/2, y: kViewSize.height*0.30)
    }
}
