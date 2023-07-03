//
//  CompresseddepthImageMessage.swift
//  RBSManager
//
//  Created by kist on 2023/04/10.
//
//
import UIKit
import ObjectMapper

public class Float32MultiArrayMessage: RBSMessage {

    public var layout: MultiArrayLayoutMessage?
    public var data: [Float32]?

    public override init() {
        super.init()
        layout = MultiArrayLayoutMessage()
    }

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        layout <- map["layout"]
        data <- map["data"]
    }
}
