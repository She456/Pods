//
//  DroneControlMessage.swift
//  RBSManager
//
//  Created by kist on 2023/01/20.
//

import UIKit
import ObjectMapper

public class DroneControlMessage: RBSMessage {
    public var x: Float64 = 0
    public var y: Float64 = 0
    
    override public func mapping(map: Map) {
        x <- map["x"]
        y <- map["y"]
    }
}
