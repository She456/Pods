//
//  DroneStateMessage.swift
//  RBSManager
//
//  Created by kist on 2023/01/30.
//

import UIKit
import ObjectMapper

public class PointCloudMessage: RBSMessage {
    public var header: HeaderMessage?
    public var data: [PointMessage2]?
    
    public override init() {
        super.init()
        header = HeaderMessage()
    }
    
    public required init?(map: Map) {
        super.init(map: map)
    }
    
    public override func mapping(map: Map) {
        header <- map["header"]
        data <- map["data"]
    }
}
