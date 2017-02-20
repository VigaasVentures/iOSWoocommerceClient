//
//  TaxLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class TaxLine: Mappable {
    

    var id:Int?
    var rateCode:String?
    var rateId:Int?
    var label:String?
    var compound:Bool?
    var taxTotal:String?
    var shippingTaxTotal:String?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        rateCode <- map["rate_code"]
        rateId <- map["rate_id"]
        label <- map["label"]
        compound <- map["compound"]
        taxTotal <- map["tax_total"]
        shippingTaxTotal <- map["shipping_tax_total"]
    }
    
}
