//
//  VIPERBuilder.swift
//
//  Created by ViperModuleGenerator https://github.com/JulianAlonso/viper-module-generator.
//

import UIKit

final class VIPERBuilder: ModuleBuilder {

    func build() -> UIViewController {
        let viewController = VIPERViewController()
        let presenter = VIPERPresenter(view: viewController)
        let router = VIPERRouter(presenter: presenter, viewController: viewController)

        viewController.uidelegate = presenter
        presenter.navigationDelegate = router

        return viewController
    }

}
