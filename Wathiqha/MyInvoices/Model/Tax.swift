//
//  Tax.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation

class Tax{
  
    var name:String
    var percentage: Double
    var description:String
    
    init(name: String, percentage: Double, description: String) {
        self.name = name
        self.percentage = percentage
        self.description = description
    }
}
