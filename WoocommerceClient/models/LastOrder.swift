//
//  LastOrder.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class LastOrder: Mappable {
    
    var id:Int?
    var date:Date?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        date <- (map["date"], RFC3339DateTransform())
    }
    
}
