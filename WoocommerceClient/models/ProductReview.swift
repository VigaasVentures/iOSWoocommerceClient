//
//  ProductReview.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 21/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class ProductReview: Mappable {
    
    var id:Int?
    var dateCreated:Date?
    var review:String?
    var rating:Double?
    var name:String?
    var email:String?
    var verified:Bool?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        dateCreated <- (map["date_created"], RFC3339DateTransform())
        review <- map["review"]
        rating <- map["rating"]
        name <- map["name"]
        email <- map["email"]
        verified <- map["verified"]
    }
    
}
