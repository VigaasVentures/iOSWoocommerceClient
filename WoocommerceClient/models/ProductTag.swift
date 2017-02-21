//
//  ProductTag.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 21/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class ProductTag: Mappable {
    
    var id:Int?
    var name:String?
    var slug:String?
    var description:String?
    var count:Int?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        slug <- map["slug"]
        description <- map["description"]
        count <- map["count"]
    }
    
}
