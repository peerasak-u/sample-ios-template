//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import UIKit

// sourcery: AutoMockable
protocol ___VARIABLE_interactorName___BusinessLogic: AnyObject {
    func viewDidLoad()
}

// sourcery: AutoMockable
protocol ___VARIABLE_interactorName___DataStore: AnyObject {
    var sections: [___VARIABLE_interactorName___.SectionModel] { get }
    var snapshot: NSDiffableDataSourceSnapshot<___VARIABLE_interactorName___.Section, String> { get }
}

// MARK: - Interactor
class ___VARIABLE_interactorName___: ___VARIABLE_interactorName___BusinessLogic {
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
    var worker = ___VARIABLE_sceneWorkerName___()

    private var viewModels: [SectionModel] = [
        SectionModel(section: .sectionA,
                     items: [
                        .itemA(title: "Title A")
                     ]),
        SectionModel(section: .sectionB,
                     items: [
                        .itemB(title: "Title B"),
                     ])
    ]

    func viewDidLoad() {
        updateSection()
    }
}

// MARK: - Private functions
private extension ___VARIABLE_interactorName___ {

}

// MARK: - Data Store
extension ___VARIABLE_interactorName___: ___VARIABLE_interactorName___DataStore {
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, UUID>

    enum Section: CaseIterable {
        case sectionA
        case sectionB
    }

    enum Item {
        case itemA(title: String)
        case itemB(title: String)
        
        var identifier: String {
            switch self {
            case let .itemA(title):
                return UUID()
            case let .itemB(title):
                return UUID()
            }
        }
    }

    struct SectionModel {
        var section: Section
        var items: [Item]
    }
    
    var sections: [SectionModel] {
        return viewModels
    }
    
    var snapshot: Snapshot {
        return getSnapshot()
    }
    
    func updateSection() {
        presenter?.performReloadData()
    }

    func getSnapshot() -> Snapshot {
        var snapshot = Snapshot()
        
        snapshot.appendSections(viewModels.map({ $0.section }))
        
        viewModels.forEach { sectionModel in
            snapshot.appendItems(sectionModel.items.map({ $0.identifier }),
                                 toSection: sectionModel.section)
        }
        
        return snapshot
    }
}