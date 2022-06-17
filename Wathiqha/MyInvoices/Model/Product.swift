//
//  Product.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation
class Product{
    
    var name:String
    var price:Double
    var priceAfterSale:Double
    var productType:String
    var gurantee:Gurantee?
    var expireDate:Date
    var refundable:Bool
    var exchangable:Bool
    var refundDuration:Int
    var ExchangeDuration:Int
    

     init(name: String, price: Double, priceAfterSale: Double, productType: String, gurantee: Gurantee? = nil, expireDate: Date, refundable: Bool, exchangable: Bool, refundDuration: Int, ExchangeDuration: Int) {
        self.name = name
        self.price = price
        self.priceAfterSale = priceAfterSale
        self.productType = productType
        self.gurantee = gurantee
        self.expireDate = expireDate
        self.refundable = refundable
        self.exchangable = exchangable
        self.refundDuration = refundDuration
        self.ExchangeDuration = ExchangeDuration
    }
}
