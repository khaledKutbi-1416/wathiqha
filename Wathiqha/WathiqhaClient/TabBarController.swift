//
//  MainViewController.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import UIKit

class TabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let invoices = MyInvoicesViewController()
        let invoicesTitle = NSLocalizedString("myInvoices", comment: "invoicesTitle")
        invoices.title = invoicesTitle
        
        let profile = ProfileViewController()
        let profileTitle = NSLocalizedString("profile", comment: "invoicesTitle")
        profile.title = profileTitle

        let controllers: [UIViewController] = [invoices,profile]
        self.setViewControllers(controllers, animated: true)
    }
    

}
