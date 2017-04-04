//
//  VIPERPresenter.swift
//
//  Created by ViperModuleGenerator https://github.com/JulianAlonso/viper-module-generator.
//

import Foundation

protocol VIPERView: class {

}

protocol VIPERNavigationDelegate {

}

final class VIPERPresenter: Presenter {

    unowned let view: VIPERView
    var navigationDelegate: VIPERNavigationDelegate?

    init(view: VIPERView) {
        self.view = view
    }

}

extension VIPERPresenter: VIPERUIDelegate {

}
