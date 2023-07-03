//
//  CompressedImageMessage.swift
//  RBSManager
//
//  Created by kist on 2023/03/21.
//

import UIKit
import ObjectMapper

public class CompressedImageMessage: RBSMessage {
    
    public var header: HeaderMessage?
    public var format: String = ""
    public var data: [UInt8]?

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
        data   <- map["data"]
    }
}
