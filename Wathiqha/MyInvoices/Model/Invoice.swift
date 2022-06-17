//
//  Invoice.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 26/07/1443 AH.
//

import Foundation
//enum PaymentMethod {
//    case cash
//    case CridetCrd = CridetCardtype
//    case ApplePay
//    case west
//}
//enum CridetCardtype{
//    case mada
//    case visa
//    case masterCard
//}
//enum PaymentVia{
//    case mada
//    case visa
//    case masterCard
//}



class Invoice:Identifiable{
  
    var id:String
    var number:Int
    var orgnization:Orgnization
    var orgnizationBranch:String?
    var cratedOn:String
    var products:[Product]
    var total:Double
    var texes:[Tax]?
    var totalWithTaxes:Double?
    var OwnershipTransfare: Bool
    var PaymentMethod: String?
    var invoiceType:String?
    
    init(id: String, number: Int, orgnization: Orgnization, orgnizationBranch: String? = nil, cratedOn: String, products: [Product], total: Double, texes: [Tax]? = nil, totalWithTaxes: Double? = nil, OwnershipTransfare: Bool, PaymentMethod: String? = nil, invoiceType: String? = nil) {
        self.id = id
        self.number = number
        self.orgnization = orgnization
        self.orgnizationBranch = orgnizationBranch
        self.cratedOn = cratedOn
        self.products = products
        self.total = total
        self.texes = texes
        self.totalWithTaxes = totalWithTaxes
        self.OwnershipTransfare = OwnershipTransfare
        self.PaymentMethod = PaymentMethod
        self.invoiceType = invoiceType
    }
   
}




