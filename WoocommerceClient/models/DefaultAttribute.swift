//
//  DefaultAttribute.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class DefaultAttribute: Mappable {
    
    var id:Int?
    var name:String?
    var slug:String?
    var option:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        option <- map["option"]
    }
    
}
