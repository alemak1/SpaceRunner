//
//  Math.swift
//  SpaceRunner
//
//  Created by Aleksander Makedonski on 2/22/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation

func DegreesToRadians(degrees: CGFloat) -> CGFloat{
    return degrees*CGFloat(M_PI)/180.0
}

func RadiansToDegrees(radians: CGFloat) -> CGFloat{
    return radians * 180.0/CGFloat(M_PI)
}
