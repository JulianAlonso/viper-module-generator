//
//  VIPERViewController.swift
//
//  Created by ViperModuleGenerator https://github.com/JulianAlonso/viper-module-generator.
//

import UIKit

protocol VIPERUIDelegate {

}

final class VIPERViewController: ViewController {

    var uidelegate: VIPERUIDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension VIPERViewController: VIPERView {

}
