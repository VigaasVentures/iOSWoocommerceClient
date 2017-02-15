//
//  Attribute.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 14/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

public class Attribute: Mappable {

    var id:Int?
    var name:String?
    var slug:String?
    var position:Int?
    var visible:Bool?
    var variation:Bool?
    var options: [String]?
    var option:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        position <- map["position"]
        visible <- map["visible"]
        variation <- map["variation"]
        options <- map["options"]
        option <- map["option"]
    }
    
    
}
