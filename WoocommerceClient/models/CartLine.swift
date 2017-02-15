//
//  CartLine.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 15/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit

public class CartLine: NSObject {

    var productId:Int?
    var variationId:Int = 0
    var sku:String?
    var quantity:Int?
    var price:Double?
    var weight:Double?
    var productName:String?
    var attributes: [Attribute]?
    var imgUrl:String?
    
    override init() {
       super.init()
    }
    
    init(productId:Int, variationId:Int, sku:String?, quantity:Int, price:Double, weight:Double, productName:String, imgUrl:String, attrs:[Attribute]) {
        super.init()
        self.productId = productId
        self.variationId = variationId
        self.sku = sku
        self.quantity = quantity
        self.price = price
        self.weight = weight
        self.productName = productName
        self.imgUrl = imgUrl
        self.attributes = attrs
    }
    
    init(productId:Int,  quantity:Int, price:Double, weight:Double, productName:String, imgUrl:String) {
        super.init()
        self.productId = productId
        self.quantity = quantity
        self.price = price
        self.weight = weight
        self.productName = productName
        self.imgUrl = imgUrl
    }

}
