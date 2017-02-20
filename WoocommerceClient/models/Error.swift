//
//  Error.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class Error: Mappable {
    
    var code:String?
    var message:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        code <- map["code"]
        message <- map["message"]
    }
    
}
