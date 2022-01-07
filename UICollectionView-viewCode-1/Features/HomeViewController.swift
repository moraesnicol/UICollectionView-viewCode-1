//
//  ViewController.swift
//  UICollectionView-viewCode-1
//
//  Created by Gabriel on 07/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Load View
    override func loadView() {
        let view = UIView()
        self.view = view
        self.view.backgroundColor = .blue
    }
    
    // MARK: UI
    private lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.addArrangedSubview(plainViewControllerButton)
        sv.addArrangedSubview(subClassedViewButton)
        return sv
    }()
    
    private lazy var plainViewControllerButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Plain ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goPlain), for: .touchDown)
        return bt
    }()
    
    private lazy var subClassedViewButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Subclassed ViewController", for: .normal)
        bt.addTarget(self, action: #selector(goPlain), for: .touchDown)
        return bt
    }()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addConstraints()
        title = "Collection View School"
        
    }
    
    // MARK: Actions
    @objc func goPlain() {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    @objc func goSubClass() {
        self.navigationController?.pushViewController(ViewControllerSubClassedCell(), animated: true)
    }
    
    private func addConstraints() {
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }

}
