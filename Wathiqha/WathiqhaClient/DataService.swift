//
//  DataService.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation

protocol DataService {
    func getUser(completion: @escaping(Result<User,Error>)-> Void)
    func getInvoices(completion: @escaping (Result<[Invoice],Error>)-> Void)
}

class AppDataService:DataService{
    let url =  EndPoint().Url(base: "base", apiPath: "signIn")
    
    func getUser(completion: @escaping(Result<User,Error>)-> Void){
        DispatchQueue.main.async {
            completion(.success(self.user))
        }
    }
    
    func getInvoices(completion: @escaping (Result<[Invoice],Error>)-> Void){
        DispatchQueue.main.async {
            completion(.success(self.invoices))
        }
    }

}


extension AppDataService{
   private var user:User  {
        
        let income = Income(name: "salary", date: "28", amount: 5490.00, source: "wrok")
        let user = User(id: "9fjfdkl", isVerified: true, firstName: "khaled", lastName: "kutbi", phoneNumber: "0558293496", emailAddres: "kutbi70@gmail.om", birthDay:"1996/5/1" , gender: true, jobTitle: "mobile app devloper", incomes: [income], categories: [])
        return user
    }
    
    private var invoices: [Invoice]{
        let contcatInformations1 = [
            ContactInformation(title: "Phone", value: "+996558293496"),
            ContactInformation(title: "Email", value: "halfMillion@gmail.com")
        ]
        let organization = Orgnization(id: "0", name: "1/2 millio", field: "food & Bavrages", profileImageUrl: "12million", contactInformations: contcatInformations1, branches: [])
        
        let invoice1 = Invoice(id: "fk4", number: 854393, orgnization:organization, cratedOn: "12-2-2020", products: [], total: 105.40, OwnershipTransfare: false)
        
        
        let contcatInformations2 = [
            ContactInformation(title: "Phone", value: "+996558293496"),
            ContactInformation(title: "Email", value: "Extra@gmail.com")

        ]
        let organization2 = Orgnization(id: "3", name: "Extra", field: "Electronics", profileImageUrl: "extra", contactInformations: contcatInformations2, branches: [])
        let invoice2 = Invoice(id: "3k4", number: 345544434, orgnization:organization2, cratedOn: "22-5-2022", products: [], total: 105.40, OwnershipTransfare: false)
        return  [invoice1,invoice2]
    }
    
}

