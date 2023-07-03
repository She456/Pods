//
//  DronePoseMessage.swift
//  RBSManager
//
//  Created by kist on 2023/01/19.
//
import UIKit
import ObjectMapper

public class DronePoseMessage: RBSMessage {
    public var x: Float32 = 0.0
    public var y: Float32 = 0.0
    public var z: Float32 = 0.0
    public var quater_x: Float32 = 0.0
    public var quater_y: Float32 = 0.0
    public var quater_z: Float32 = 0.0
    public var quater_w: Float32 = 0.0
    
    public override func mapping(map: Map) {
        x <- map["x"]
        y <- map["y"]
        z <- map["z"]
        quater_x <- map["quater_x"]
        quater_y <- map["quater_y"]
        quater_z <- map["quater_z"]
        quater_w <- map["quater_w"]
    }
}
