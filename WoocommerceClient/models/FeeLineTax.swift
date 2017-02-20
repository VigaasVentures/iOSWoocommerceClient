//
//  FeeLineTax.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class FeeLineTax: Mappable {
    
    var id:Int?
    var total:String?
    var subtotal:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        total <- map["total"]
        subtotal <- map["subtotal"]
    }
    
}
