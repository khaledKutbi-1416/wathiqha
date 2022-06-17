//
//  Orgnization.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation
class Orgnization{
   
    var id:String
    var name:String
    var field:String
    var profileImageUrl:String
    var contactInformations:[ContactInformation]
    var branches:[Branch]
    
    
    init(id: String, name: String, field: String, profileImageUrl: String, contactInformations: [ContactInformation], branches: [Branch]) {
        self.id = id
        self.name = name
        self.field = field
        self.profileImageUrl = profileImageUrl
        self.contactInformations = contactInformations
        self.branches = branches
    }
    
    
}


