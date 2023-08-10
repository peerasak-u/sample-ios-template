//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import UIKit

// sourcery: AutoMockable
protocol ___VARIABLE_routerName___RoutingLogic {
    static func createScene() -> ___VARIABLE_viewControllerName___
}

class ___VARIABLE_routerName___: ___VARIABLE_routerName___RoutingLogic {    
    weak var viewController: ___VARIABLE_viewControllerName___?

    static func createScene() -> ___VARIABLE_viewControllerName___ {
        let viewController = ___VARIABLE_viewControllerName___()
        let interactor = ___VARIABLE_interactorName___()
        let presenter = ___VARIABLE_presenterName___()
        let router = ___VARIABLE_routerName___()

        viewController.interactor = interactor
        viewController.dataStore = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController

        return viewController
    }
}
