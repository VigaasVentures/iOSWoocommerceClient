//
//  RefundLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 21/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class RefundLine: Mappable {
    
    
    var id:Int?
    var reason:String?
    var total:String?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        reason <- map["reason"]
        total <- map["total"]
    }
    
}
