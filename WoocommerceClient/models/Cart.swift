//
//  Cart.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 15/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit

public class Cart: NSObject {
    
    var totalPrice:Double = 0
    var totalWeight:Double = 0
    var cartItems:[CartLine] = []
    
    public func addToCart(item:CartLine) {
        var ADDED:Bool = false
        for idx in cartItems.indices {
            let c = cartItems[idx]
            if c.productId == item.productId {
                if c.variationId == item.variationId {
                    ADDED = true
                    totalPrice = totalPrice - (c.price! * Double(c.quantity!)) + (Double(item.quantity!) * item.price!)
                    totalWeight = totalWeight - (c.weight! * Double(c.quantity!)) + (Double(item.quantity!) * item.weight!)
                    cartItems[idx] = item
                    return
                }
                else {
                    ADDED = true
                    totalPrice = totalPrice + (Double(item.quantity!) * item.price!)
                    totalWeight = totalWeight + (Double(item.quantity!) * item.weight!)
                    cartItems.append(item)
                    return
                }
            }
        }
        if(!ADDED) {
            totalPrice = totalPrice + (Double(item.quantity!) * item.price!)
            totalWeight = totalWeight + (Double(item.quantity!) * item.weight!)
            cartItems.append(item)
        }
    }
    
    
    public func getCartItems() -> [CartLine] {
        return self.cartItems
    }
    
    public func updateCartItem(item:CartLine, at position:Int) {
        let c = cartItems[position]
        totalPrice = totalPrice - (c.price! * Double(c.quantity!)) + (Double(item.quantity!) * item.price!)
        totalWeight = totalWeight - (c.weight! * Double(c.quantity!)) + (Double(item.quantity!) * item.weight!)
        cartItems[position] = item
    }
    
    public func removeCartItem(at position: Int) {
        let c = cartItems[position]
        totalPrice = totalPrice - (c.price! * Double(c.quantity!))
        totalWeight = totalWeight - (c.weight! * Double(c.quantity!))
        self.cartItems.remove(at: position)
    }
    
    public func clearCart() {
        self.cartItems = []
        self.totalWeight = 0
        self.totalPrice = 0
    }
    
}
