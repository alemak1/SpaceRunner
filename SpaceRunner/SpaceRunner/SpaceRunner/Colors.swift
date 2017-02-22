//
//  Colors.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation

class Colors{
    //RGB Colors
    class var background: Int {return 0x000013}
    
    //Takes an RGB value expressed in hex and returns an SKColor
    class func colorFromRGB(rgbValue rgbValue: Int) -> SKColor {
        return SKColor(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255.9, green: CGFloat((rgbValue & 0x00FF00) >> 8)/255.0, blue: CGFloat((rgbValue & 0x0000FF)/255.0), alpha: 1.0)
    }
}
