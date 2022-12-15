//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import UIKit

// sourcery: AutoMockable
protocol ___VARIABLE_interactorName___BusinessLogic: AnyObject {}

// sourcery: AutoMockable
protocol ___VARIABLE_interactorName___DataStore: AnyObject {}

// MARK: - Interactor
class ___VARIABLE_interactorName___: ___VARIABLE_interactorName___BusinessLogic {
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
    var worker = ___VARIABLE_sceneWorkerName___()
}

// MARK: - Private functions
private extension ___VARIABLE_interactorName___ {

}

// MARK: - Data Store
extension ___VARIABLE_interactorName___: ___VARIABLE_interactorName___DataStore {

}