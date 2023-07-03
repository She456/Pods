//
//  DroneStateMessage.swift
//  RBSManager
//
//  Created by kist on 2023/01/30.
//

import UIKit
import ObjectMapper

public class DroneStateMessage: RBSMessage {
    public var state: String = ""
    
    public override func mapping(map: Map) {
        state <- map["state"]
    }
}
