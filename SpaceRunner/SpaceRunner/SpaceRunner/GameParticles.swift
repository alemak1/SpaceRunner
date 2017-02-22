//
//  GameParticles.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import SpriteKit

class GameParticles{
    static let sharedInstance = GameParticles()
    
    //MARK: Class Enum
    enum Particles: Int{
        case background, engine
    }
    
    //MARK: Private class variables
    private var backgroundEmitter = SKEmitterNode()
    private var engineEmitter = SKEmitterNode()
    
    init(){
        setupBackgroundEmitter()
        setupEngineEmitter()
    }
    
    private func setupBackgroundEmitter(){
        //Birthrate and Lifetime
        backgroundEmitter.particleBirthRate = 25.0
        backgroundEmitter.particleLifetime = 5.0
        backgroundEmitter.particleLifetimeRange = 5.0
        
        //Position Range
        backgroundEmitter.position = CGPoint(x: kViewSize.width/2, y: kViewSize.height)
        backgroundEmitter.particlePositionRange = CGVector(dx: kViewSize.width, dy: kViewSize.height*2)
        
        //Speed
        backgroundEmitter.particleSpeed = 200.0
        backgroundEmitter.particleSpeedRange = backgroundEmitter.particleSpeed/4
        
        //Emission Angle
        backgroundEmitter.emissionAngle = CGFloat(-90.0*(M_PI)/180.0)
        backgroundEmitter.emissionAngleRange = CGFloat(15.0*(M_PI)/180.0)
        
        //Alpha
        backgroundEmitter.particleAlpha = 0.5
        backgroundEmitter.particleAlphaRange = 0.25
        backgroundEmitter.particleAlphaSpeed = -0.125
        
        //Color Blending
        backgroundEmitter.particleColorBlendFactor = 0.5
        backgroundEmitter.particleColorBlendFactorRange = 0.25
        
        //Color
        backgroundEmitter.particleColor = Colors.colorFromRGB(rgbValue: Colors.dust)
        
        //Texture
        backgroundEmitter.particleTexture = GameTextures.sharedInstance.texture(name: SpriteName.magic)
    }
    
    
    private func setupEngineEmitter(){
        //Birthrate and Lifetime
        backgroundEmitter.particleBirthRate = 25.0
        backgroundEmitter.particleLifetime = 0.5
        
        //Position Range
        backgroundEmitter.particlePositionRange = CGVector(dx: 0, dy: 0)
        
        //Speed
        backgroundEmitter.particleSpeed = -80.0
       
        //Angle
        backgroundEmitter.emissionAngle = CGFloat(90.0*(M_PI)/180.0)
        
        //Color Blending
        backgroundEmitter.particleColorBlendFactor = 1.0
        
        //Color
        backgroundEmitter.particleColor = Colors.colorFromRGB(rgbValue: Colors.engine)
        
        //Texture
        backgroundEmitter.particleTexture = GameTextures.sharedInstance.texture(name: SpriteName.magic)
        
    }
    
    //MARK: Public Methods
    func createParticles(particles: Particles) -> SKEmitterNode{
        switch particles{
        case .background:
            return backgroundEmitter.copy() as! SKEmitterNode
        case .engine:
            return engineEmitter.copy() as! SKEmitterNode
        }
    }
    
}
