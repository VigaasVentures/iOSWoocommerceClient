//
//  Customer.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 21/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class Customer: Mappable {
    
    
    var id:Int?
    var dateCreated:Date?
    var dateUpdated:Date?
    var email:String?
    var firstName:String?
    var lastName:String?
    var username:String?
    var lastOrder:LastOrder?
    var ordersCount:Int?
    var totalSpent:String?
    var avatar:String?
    var billingAddress:BillingAddress?
    var shippingAddress:ShippingAddress?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        dateCreated <- (map["date_created"], RFC3339DateTransform())
        dateUpdated <- (map["date_modified"], RFC3339DateTransform())
        email <- map["email"]
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        username <- map["username"]
        lastOrder <- map["last_order"]
        ordersCount <- map["orders_count"]
        totalSpent <- map["total_spent"]
        avatar <- map["avatar_url"]
        billingAddress <- map["billing"]
        shippingAddress <- map["shipping"]
    }
    
}
