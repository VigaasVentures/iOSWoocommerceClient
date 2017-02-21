//
//  ProductImage.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 21/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class ProductImage: Mappable {
    
    var id:Int?
    var dateCreated:Date?
    var dateUpdated:Date?
    var src:String?
    var name:String?
    var alt:String?
    var position:Int?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        dateCreated <- (map["date_created"], RFC3339DateTransform())
        dateUpdated <- (map["date_modified"], RFC3339DateTransform())
        src <- map["src"]
        name <- map["name"]
        alt <- map["alt"]
        position <- map["position"]
    }
    
}
