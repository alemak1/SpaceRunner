//
//  Colors.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import SpriteKit

class Colors{
    //RGB Colors
    class var background: Int {return 0x000013}
    class var dust: Int { return 0x04f2de }
    class var engine: Int { return 0x55f87e }
    
    //Takes an RGB value expressed in hex and returns an SKColor
    class func colorFromRGB(rgbValue: Int) -> SKColor {
        return SKColor(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255, green: CGFloat((rgbValue & 0x00FF00) >> 8)/255, blue: CGFloat((rgbValue & 0x0000FF)/255), alpha: 1.0)
    }
}
