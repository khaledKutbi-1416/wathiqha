//
//  ProfileViewController.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {

    var viewModel = ProfileViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup(viewModel: self.viewModel)
            // Do any additional setup after loading the view.
    }
    

    func setup(viewModel:ProfileViewModel){
         let hostingController = UIHostingController(rootView: ProfileScreen())
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.frame = view.frame
    }

}
