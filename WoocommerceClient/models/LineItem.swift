//
//  LineItem.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class LineItem: Mappable {
    
    var id:Int?
    var name:String?
    var sku:String?
    var productId:Int?
    var variationId:Int = 0
    var quantity:Int?
    var taxClass:String?
    var price:String?
    var subtotal:String?
    var subtotalTax:String?
    var total:String?
    var totalTax:String?
    var taxes:[TaxesMeta]?
    var meta:[ProductMetaItem]?

    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        sku <- map["sku"]
        productId <- map["product_id"]
        variationId <- map["variation_id"]
        quantity <- map["quantity"]
        taxClass <- map["tax_class"]
        price <- map["price"]
        subtotal <- map["subtotal"]
        subtotalTax <- map["subtotal_tax"]
        total <- map["total"]
        totalTax <- map["total_tax"]
        taxes <- map["taxes"]
        meta <- map["meta"]
    }
    
}
