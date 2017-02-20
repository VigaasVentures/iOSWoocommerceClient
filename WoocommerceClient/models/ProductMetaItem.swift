//
//  ProductMetaItem.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class ProductMetaItem: Mappable {
    
    var key:String?
    var label:String?
    var value:String?

    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        key <- map["key"]
        label <- map["label"]
        value <- map["value"]
    }
    
}
