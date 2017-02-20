//
//  CouponLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class CouponLine: Mappable {
    
    var id:Int?
    var code:String?
    var discount:String?
    var discountTax:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        code <- map["code"]
        discount <- map["discount"]
        discountTax <- map["discount_tax"]
    }
    
}
