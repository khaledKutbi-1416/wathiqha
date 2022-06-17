//
//  File.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import Foundation

class User:Identifiable{
    internal init(id: String, isVerified: Bool, firstName: String, lastName: String, phoneNumber: String, emailAddres: String? = nil, birthDay: String? = nil, gender: Bool? = nil, jobTitle: String? = nil, incomes: [Income], categories: [Category]? = nil) {
        self.id = id
        self.isVerified = isVerified
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.emailAddres = emailAddres
        self.birthDay = birthDay
        self.gender = gender
        self.jobTitle = jobTitle
        self.incomes = incomes
        self.categories = categories
    }
    
  
    var id:String
    var isVerified:Bool
    var firstName:String
    var lastName:String
    var phoneNumber:String
    var emailAddres:String?
    var birthDay:String?
    var gender:Bool?
    var jobTitle:String?
    var incomes: [Income]
    var categories: [Category]?
    
   
}

class Category:Identifiable{
    internal init(id: Int, Name: String, type: String, invoices: [Invoice], users: [User]) {
        self.id = id
        self.Name = Name
        self.type = type
        self.invoices = invoices
        self.users = users
    }
    
    
    var id:Int
    var Name:String
    var type:String
    var invoices:[Invoice]
    var users:[User]
    
}
class Income:Identifiable{
    internal init(name: String, date: String, amount: Double, source: String) {
        self.name = name
        self.date = date
        self.amount = amount
        self.source = source
    }
    var name:String
    var date:String
    var amount:Double
    var source:String
    
}
