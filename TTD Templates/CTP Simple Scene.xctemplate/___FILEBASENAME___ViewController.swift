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

    lazy var dummyView: UIView = {
        let element = UIView(frame: .zero)
        element.applyBackground(.whiteVwBg)
        return element
    }()
    
    lazy var navBar: CTPNavBar = {
        let element = CTPNavBar(title: "Scene Name")
        return element
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
        self.initLayoutConstraint()
        self.applyStyle()

        interactor.viewDidLoad()
    }

}
// MARK: - Event Handler
private extension ___VARIABLE_viewControllerName___ {}

// MARK: - UI
private extension ___VARIABLE_viewControllerName___ {

    func initUI() {
        view.addSubview(dummyView)
        view.addSubview(navBar)
    }
    
    func initLayoutConstraint() {
        dummyView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        
        navBar.snp.makeConstraints { make in
            make.top.equalTo(dummyView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(56)
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
private extension ___VARIABLE_viewControllerName___ {
}