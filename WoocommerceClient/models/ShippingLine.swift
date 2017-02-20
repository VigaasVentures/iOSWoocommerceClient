//
//  ShippingLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class ShippingLine: Mappable {
    
    
    var id:Int?
    var methodTitle:String?
    var methodId:Int?
    var total:String?
    var totalTax:String?
    var taxes:[FeeLineTax]?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        methodTitle <- map["method_title"]
        methodId <- map["method_id"]
        total <- map["total"]
        totalTax <- map["total_tax"]
        taxes <- map["taxes"]
    }
    
}
