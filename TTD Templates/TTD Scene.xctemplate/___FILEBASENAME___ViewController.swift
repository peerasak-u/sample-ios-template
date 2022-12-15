//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit
import SnapKit

// sourcery: AutoMockable
protocol ___VARIABLE_viewControllerName___DisplayLogic: AnyObject {
    func displayErrorDialog(viewModel: ___VARIABLE_sceneName___Models.PresentErrorDialog.ViewModel)
}

class ___VARIABLE_viewControllerName___: UIViewController {

    var interactor: ___VARIABLE_interactorName___BusinessLogic!
    var router: ___VARIABLE_routerName___RoutingLogic!

    lazy var dummyLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
        self.initLayoutConstraint()
        self.applyStyle()
    }

}
// MARK: - Event Handler
private extension ___VARIABLE_viewControllerName___ {}

// MARK: - UI
private extension ___VARIABLE_viewControllerName___ {

    func initUI() {
        self.view.addSubview(dummyLabel)
    }
    
    func initLayoutConstraint() {
        self.dummyLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    func applyStyle() {
        self.view.backgroundColor = .white
    }

}

// MARK: - ___VARIABLE_sceneName___DisplayLogic

extension ___VARIABLE_viewControllerName___: ___VARIABLE_viewControllerName___DisplayLogic {

    func displayErrorDialog(viewModel: ___VARIABLE_sceneName___Models.PresentErrorDialog.ViewModel) {
        debugPrint("Error na!")
    }

}

// MARK: - Private Method
private extension ___VARIABLE_viewControllerName___ {}