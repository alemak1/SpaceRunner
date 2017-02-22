//
//  GameTextures.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import SpriteKit

class GameTextures{
    static let sharedInstance = GameTextures()
    
    
    //MARK: - Private class constants
    private let gameSprites = "GameSprites"
    private let interfaceSprites = "InterfaceSprites"
    
    //MARK: - Private class variables
    private var interfaceSpritesAtlas = SKTextureAtlas()
    private var gameSpritesAtlas = SKTextureAtlas()
    
    //MARK: - Init
    init(){
        self.interfaceSpritesAtlas = SKTextureAtlas(named: interfaceSprites)
        self.gameSpritesAtlas = SKTextureAtlas(named: gameSprites)
    }
    
    //MARK: - Public convenience methods
    func texture(name: String) -> SKTexture{
        return SKTexture(imageNamed: name)
    }
    
    func sprite(name: String) -> SKSpriteNode{
        return SKSpriteNode(imageNamed: name)
    }
}
