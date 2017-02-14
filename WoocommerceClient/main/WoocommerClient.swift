//
//  WoocommerClient.swift
//  WoocommerClient
//
//  Created by Damandeep Singh on 13/02/17.
//  Copyright © 2017 Damandeep Singh. All rights reserved.
//

import UIKit
import Just

class WoocommerClient {

    static func doSomething(name:String) -> String {
        return "Name is \(name)"
    }
    
    static func justDoSomething(input: String, completion: @escaping (_ result: String) -> Void) {
        Just.get("http://google.com") {
            r in
            if r.ok {
                completion(r.text!)
            }
            else {
                completion("failed")
            }
        }
    }
}
