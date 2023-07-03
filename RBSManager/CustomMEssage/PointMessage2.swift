//
//  DronePoseMessage.swift
//  RBSManager
//
//  Created by kist on 2023/01/19.
//
import UIKit
import ObjectMapper

public class PointMessage2: RBSMessage {
    public var x: Float32 = 0.0
    public var y: Float32 = 0.0
    public var z: Float32 = 0.0
    public var r: UInt8 = 0
    public var g: UInt8 = 0
    public var b: UInt8 = 0
    
    public override func mapping(map: Map) {
        x <- map["x"]
        y <- map["y"]
        z <- map["z"]
        r <- map["r"]
        g <- map["g"]
        b <- map["b"]
    }
}
