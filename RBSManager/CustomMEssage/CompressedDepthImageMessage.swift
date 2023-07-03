//
//  CompresseddepthImageMessage.swift
//  RBSManager
//
//  Created by kist on 2023/04/10.
//

import UIKit
import ObjectMapper

public class CompressedDepthImageMessage: RBSMessage {

    public var header: HeaderMessage?
    public var format: String = ""
    public var imagedata: [UInt8]?
    public var depthdata: [UInt16]?

    public var camera_x: Float32?
    public var camera_y: Float32?
    public var camera_z: Float32?

    public override init() {
        super.init()
        header = HeaderMessage()
    }

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        header <- map["header"]
        format <- map["format"]
        imagedata <- map["imagedata"]
        depthdata <- map["depthdata"]

        camera_x <- map["camera_x"]
        camera_y <- map["camera_y"]
        camera_z <- map["camera_z"]
    }
}
