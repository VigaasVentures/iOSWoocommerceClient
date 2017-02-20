//
//  TaxesMeta.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class TaxesMeta: Mappable {
    
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
