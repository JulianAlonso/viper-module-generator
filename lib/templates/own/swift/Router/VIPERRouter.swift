//
//  VIPERRouter.swift
//
//  Created by ViperModuleGenerator https://github.com/JulianAlonso/viper-module-generator.
//

import UIKit

final class VIPERRouter: Router {

    unowned let presenter: VIPERPresenter
    unowned let viewController: UIViewController

    init(presenter: VIPERPresenter, viewController: UIViewController) {
        self.presenter = presenter
        self.viewController = viewController
    }

}

extension VIPERRouter: VIPERNavigationDelegate {

}


//Some useful vars
extension VIPERRouter {
    fileprivate var navigationController: UINavigationController? {
        return self.viewController.navigationController  
    }
}
