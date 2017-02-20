//
//  Dimension.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class Dimension: Mappable {
    
    var length:Double?
    var width:Double?
    var height:Double?
    var unit:String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        length <- map["length"]
        width <- map["width"]
        height <- map["height"]
        unit <- map["unit"]
    }
    
}
