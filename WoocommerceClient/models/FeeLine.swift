//
//  FeeLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class FeeLine: Mappable {
    
    var id:Int?
    var name:String?
    var taxClass:String?
    var taxStatus:String?
    var total:String?
    var totalTax:String?
    var taxes:[FeeLineTax]?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        taxClass <- map["tax_class"]
        taxStatus <- map["tax_status"]
        total <- map["total"]
        totalTax <- map["total_tax"]
        taxes <- map["taxes"]
    }
    
}
