//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import UIKit

//source: AutoMockable
protocol ___VARIABLE_sceneName___PresentationLogic: AnyObject {
    func performPresentErrorDialog(response: ___VARIABLE_sceneName___Models.PresentErrorDialog.Response)
}

class ___VARIABLE_presenterName___: ___VARIABLE_sceneName___PresentationLogic {
    weak var viewController: ___VARIABLE_viewControllerName___DisplayLogic?

    func performPresentErrorDialog(response: ___VARIABLE_sceneName___Models.PresentErrorDialog.Response) {
        viewController?.displayErrorDialog(viewModel: .init(title: "Oops!",
                                                            message: response.error?.localizedDescription ?? "Something went wrong."))
    }

}

// MARK: - Private Method

private extension ___VARIABLE_presenterName___ {}
