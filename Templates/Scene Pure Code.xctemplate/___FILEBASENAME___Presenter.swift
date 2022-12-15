//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import UIKit

//source: AutoMockable
protocol ___VARIABLE_presenterName___PresentationLogic: AnyObject {
    var viewController: ___VARIABLE_viewControllerName___DisplayLogic?

    func performPresentErrorDialog(response: DefaultSceneModel.PresentDefaultErrorDialog.Response)
}

class ___VARIABLE_presenterName___: ___VARIABLE_presenterName___PresentationLogic {
    weak var viewController: ___VARIABLE_viewControllerName___DisplayLogic?

    func performPresentErrorDialog(response: ___VARIABLE_sceneName___Model.PresentErrorDialog.Response) {
        viewController?.displayErrorDialog(viewModel: .init(title: "Oops!",
                                                            message: response.error?.description ?? "Something went wrong."))
    }
}

// MARK: - Private Method

private extension ___VARIABLE_presenterName___ {}
