//
//  Gurantee.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation
class Gurantee{

    var expirationDate:String
    var Duration:Int
    var Extandable:Bool
    var GuaranteeCompany:String
    var GuaranteeCompanyLocation:Coordinates
    
     init(expirationDate: String, Duration: Int, Extandable: Bool, GuaranteeCompany: String, GuaranteeCompanyLocation: Coordinates) {
        self.expirationDate = expirationDate
        self.Duration = Duration
        self.Extandable = Extandable
        self.GuaranteeCompany = GuaranteeCompany
        self.GuaranteeCompanyLocation = GuaranteeCompanyLocation
    }

}
