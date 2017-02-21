//
//  Order.swift
//  WoocommerceClient
//
//  Created by Damandeep Singh on 20/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class Order: Mappable {
    
    public enum Status: String {
        case Pending = "pending"
        case Processing = "processing"
        case OnHold = "on-hold"
        case Completed = "completed"
        case Cancelled = "cancelled"
        case Refunded = "refunded"
        case Failed = "failed"
    }
    
    var id:Int?
    var parentId:Int?
    var status:Status?
    var orderKey:String?
    var number:Int?
    var currency:String?
    var version:String?
    var priceIncludeTax:Bool?
    var dateCreated:Date?
    var dateUpdated:Date?
    var customerId:Int?
    var discountTotal:String?
    var discountTax:String?
    var shippingTotal:String?
    var shippingTax:String?
    var cartTax:String?
    var total:String?
    var totalTax:String?
    var billingAddress:BillingAddress?
    var shippingAddress:ShippingAddress?
    var paymentMethod:String?
    var paymentMethodTitle:String?
    var paid:Bool?
    var transactionId:String?
    var customerIpAddress:String?
    var customerUserAgent:String?
    var createdVia:String?
    var customerNote:String?
    var dateCompleted:Date?
    var datePaid:Date?
    var cartHash:String?
    var lineItems:[LineItem]?
    var taxes:[TaxLine]?
    var shippings:[ShippingLine]?
    var fees:[FeeLine]?
    var coupons:[CouponLine]?
    var refunds:[RefundLine]?
    
    
    
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        parentId <- map["parent_id"]
        status <- map["status"]
        orderKey <- map["order_key"]
        number <- map["number"]
        currency <- map["currency"]
        version <- map["version"]
        priceIncludeTax <- map["prices_include_tax"]
        dateCreated <- (map["date_created"], RFC3339DateTransform())
        dateUpdated <- (map["date_modified"], RFC3339DateTransform())
        customerId <- map["customer_id"]
        discountTotal <- map["discount_total"]
        discountTax <- map["discount_tax"]
        shippingTotal <- map["shipping_total"]
        shippingTax <- map["shipping_tax"]
        cartTax <- map["cart_tax"]
        total <- map["total"]
        totalTax <- map["total_tax"]
        billingAddress <- map["billing"]
        shippingAddress <- map["shipping"]
        paymentMethod <- map["payment_method"]
        paymentMethodTitle <- map["payment_method_title"]
        paid <- map["set_paid"]
        transactionId <- map["transaction_id"]
        customerIpAddress <- map["customer_ip_address"]
        customerUserAgent <- map["customer_user_agent"]
        createdVia <- map["created_via"]
        customerNote <- map["customer_note"]
        dateCompleted <- (map["date_completed"], RFC3339DateTransform())
        datePaid <- (map["date_paid"], RFC3339DateTransform())
        cartHash <- map["cart_hash"]
        lineItems <- map["line_items"]
        taxes <- map["tax_lines"]
        shippings <- map["shipping_lines"]
        fees <- map["fee_lines"]
        coupons <- map["coupon_lines"]
        refunds <- map["refunds"]
        
    }
    
}
