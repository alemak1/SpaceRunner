//
//  Background.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import SpriteKit

class Background: SKNode {

    //MARK: - Private class constants
    private let backgroundRunSpeed: CGFloat = 200.0
    private let backgroundStopSpeed: CGFloat = 5.0
    
    //MARK: - Private class variables
    private var particlesLarge = SKEmitterNode()
    private var particlesMedium = SKEmitterNode()
    private var particlesSmall = SKEmitterNode()
    private var particlesArray = [SKEmitterNode]()
    
    //MARK: - Init
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    override init(){
        super.init()
        self.setup()
    }
    
    
    //MARK: - Setup
    
    private func setup(){
        self.zPosition = -1.0
        particlesLarge = GameParticles.sharedInstance.createParticles(particles: .background)
        particlesMedium = GameParticles.sharedInstance.createParticles(particles: .background)
        particlesSmall = GameParticles.sharedInstance.createParticles(particles: .background)
        particlesArray.append(particlesLarge)
        particlesArray.append(particlesMedium)
        particlesArray.append(particlesSmall)
        
        for particles in particlesArray{
            self.addChild(particles)
        }
        
        stopBackground()
    }
    
    //MARK: Action
    
    func startBackground(){
        for particles in particlesArray{
            particles.particleBirthRate = particles.particleBirthRate*4.0
            particles.particleLifetime = particles.particleLifetime/4.0
            particles.particleSpeed = backgroundRunSpeed
            particles.particleSpeedRange = backgroundRunSpeed/4.0
            
        }
    }
    
    func stopBackground(){
        for particles in particlesArray{
            particles.particleBirthRate = particles.particleBirthRate/4.0
            particles.particleLifetime = particles.particleLifetime*4.0
            particles.particleSpeed = backgroundStopSpeed
            particles.particleSpeedRange = backgroundStopSpeed/4
        }
        
    }
    
    func gameOver(){
        for particles in particlesArray{
            particles.particleColor = SKColor.gray
        }
    }
    
    
}
