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
    func reloadData()
}

class ___VARIABLE_viewControllerName___: UIViewController {

    var interactor: ___VARIABLE_interactorName___BusinessLogic!
    var dataStore: ___VARIABLE_interactorName___DataStore!
    var router: ___VARIABLE_routerName___RoutingLogic!

    private var dataSource: DataSource!
    
    lazy var dummyView: UIView = {
        let element = UIView(frame: .zero)
        element.applyBackground(.whiteVwBg)
        return element
    }()
    
    lazy var navBar: CTPNavBar = {
        let element = CTPNavBar(title: "Scene Name")
        return element
    }()

    lazy var collectionView: UICollectionView = {
        let element = UICollectionView(frame: .zero,
                                              collectionViewLayout: createLayout())
        dataSource = makeDatasoure(for: element)
        // TODO: - Register cell
        // collectionView.register(ItemACell.self,
        //                         forCellWithReuseIdentifier: "ItemACell")
        // collectionView.register(ItemBCell.self,
        //                         forCellWithReuseIdentifier: "ItemBCell")
        element.backgroundColor = .white
        element.dataSource = dataSource
        
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
        view.addSubview(collectionView)
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
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(navBar.snp.bottom)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }

    func applyStyle() {
        self.view.backgroundColor = .white
    }

}

// MARK: - ___VARIABLE_sceneName___DisplayLogic

extension ___VARIABLE_viewControllerName___: ___VARIABLE_viewControllerName___DisplayLogic {
    func reloadData() {
        applySnapshot()
    }

    func displayErrorDialog(viewModel: ___VARIABLE_sceneName___Models.PresentErrorDialog.ViewModel) {
        debugPrint("Error na!")
    }

}

// MARK: - Private Method
private extension ___VARIABLE_viewControllerName___ {
    typealias DataSource = UICollectionViewDiffableDataSource<___VARIABLE_interactorName___.Section, UUID>

    func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, environment) -> NSCollectionLayoutSection? in
            guard
                let sectionModel = self?.dataStore.sections.valueAtIndex(sectionIndex)
            else { return nil }
            
            let section = sectionModel.section
            
            switch section {
            case .sectionA:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                      heightDimension: .estimated(207))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                             leading: 25,
                                                             bottom: 0,
                                                             trailing: 25)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize,
                                                               subitems: [item])
                let sectionLayout = NSCollectionLayoutSection(group: group)
                
                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                      leading: 0,
                                                                      bottom: 30,
                                                                      trailing: 0)
                
                return sectionLayout
                
            case .sectionB:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                      heightDimension: .absolute(60))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                             leading: 25,
                                                             bottom: 0,
                                                             trailing: 25)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize,
                                                               subitems: [item])
                
                let sectionLayout = NSCollectionLayoutSection(group: group)
                
                return sectionLayout
            }
        }
        
        return layout
    }

    func makeDatasoure(for collectionView: UICollectionView) -> DataSource {
        let dataSource = UICollectionViewDiffableDataSource<___VARIABLE_interactorName___.Section, UUID>(collectionView: collectionView) { [weak self] (collectionView, indexPath, identifier) -> UICollectionViewCell? in
            
            guard
                let sectionModel = self?.dataStore.sections.valueAtIndex(indexPath.section)
            else { return nil }
            
            let section = sectionModel.section
            
            switch section {
            case .sectionA:
                
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemACell",
                                                              for: indexPath)
                
                if case let .itemA(title) = sectionModel.items[indexPath.row] {
                    // TODO: - Bind data here
                }
                
                return cell
                
            case .sectionB:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemBCell",
                                                              for: indexPath)
                
                if case let .itemB(title) = sectionModel.items[indexPath.row] {
                    // TODO: - Bind data here
                }
                
                return cell
            }
        }
        
        return dataSource
    }

    func applySnapshot() {
        dataSource.apply(dataStore.snapshot,
                         animatingDifferences: false)
    }
}