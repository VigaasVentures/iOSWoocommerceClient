//
//  BillingAddress.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 15/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

public class BillingAddress: Mappable {

    var firstName:String?
    var lastName:String?
    var company:String?
    var address1:String?
    var address2:String?
    var city:String?
    var state:String?
    var postcode:String?
    var country:String?
    var email:String?
    var phone:String?
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        firstName <- map["first_name"]
        lastName <- map["last_name"]
        company <- map["company"]
        address1 <- map["address_1"]
        address2 <- map["address_2"]
        city <- map["city"]
        state <- map["state"]
        postcode <- map["postcode"]
        country <- map["country"]
        email <- map["email"]
        phone <- map["phone"]
        
    }
    
}
