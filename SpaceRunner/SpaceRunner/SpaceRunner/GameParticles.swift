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
        
    }
    
    
    private func setupEngineEmitter(){
        
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
