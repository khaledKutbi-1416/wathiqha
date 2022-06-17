//
//  Branch.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation

class Branch{
  
    
    var orgnization:String
    var name:String
    var number:Int
    var contactDetails:ContactInformation
    var location:Coordinates
    
    init(orgnization: String, name: String, number: Int, contactDetails: ContactInformation, location: Coordinates) {
        self.orgnization = orgnization
        self.name = name
        self.number = number
        self.contactDetails = contactDetails
        self.location = location
    }

}
