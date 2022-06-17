//
//  ViewController.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 26/07/1443 AH.
//

import UIKit
import SwiftUI

class MyInvoicesViewController: UIViewController {

    var viewModle = MyInvoicesViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.viewModle.getInvoices()
        setup(viewModel: self.viewModle)
        
    }
    
    func setup(viewModel:MyInvoicesViewModel){
         let hostingController = UIHostingController(rootView: MyInvoicScreen(viewModel: viewModle))
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.frame = view.frame
    }


}

