//
//  MyInvoicesViewModel.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 27/07/1443 AH.
//

import Foundation
import SwiftUI


class MyInvoicesViewModel:ObservableObject{
        
    
    let service : DataService

    @Published var invoices: [Invoice] = []
        
    init(dataService: DataService = AppDataService()){
        self.service = dataService
//        getInvoices()
    }

    func getInvoices(){
        service.getInvoices {[weak self] invoices in
            self?.invoices = invoices
        }
    }
    
    
}

//class AppModel:ObservableObject {
//    
//    var colors:Colors
//    
//    init() {
//        
//    }
//    
//    
//}
