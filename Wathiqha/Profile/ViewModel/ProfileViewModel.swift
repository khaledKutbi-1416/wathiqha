//
//  ProfileViewModel.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import Foundation
import SwiftUI




class ProfileViewModel:ObservableObject{
        
    var service: DataService

    @Published var user: User?

    init(dataSerivce: DataService = AppDataService()){
        self.service = dataSerivce
//        getUser()
    }

    func getUser(){
        //TODO: call service layer in here
        service.getUser { [weak self] user in
            self?.user = user
        }
    }
    
    func changeToEnglish() -> Void {
        let langCode:String = Locale.current.languageCode!
        if langCode != "en"{
            UserDefaults.standard.setValue("ar", forKey: "ApplesLanguages")
            exit(0)
        }
    }
    func changeToArabic() -> Void {
        let langCode:String = Locale.current.languageCode!
        if langCode != "ar"{
            UserDefaults.standard.setValue("en", forKey: "ApplesLanguages")
            exit(0)
        }
    }
    
    
    func presentTermsAndCondations() -> Void{
        
    }
    func presentPrivacyPolicy() -> Void{
        
    }
        
}
