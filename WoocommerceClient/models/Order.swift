//
//  Order.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class Order: Mappable {
    
    public enum Status: String {
        case Pending = "pending"
        case Processing = "processing"
        case OnHold = "on-hold"
        case Completed = "completed"
        case Cancelled = "cancelled"
        case Refunded = "refunded"
        case Failed = "failed"
    }
    
    var id:Int?
    var subtotal:Double?
    var total:Double?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        subtotal <- map["subtotal"]
        total <- map["total"]
    }
    
}
