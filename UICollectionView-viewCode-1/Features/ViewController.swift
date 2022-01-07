//
//  ViewController.swift
//  UICollectionView-viewCode-1
//
//  Created by Gabriel on 07/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Data Colors
    var data = [UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green, UIColor.red, UIColor.green, UIColor.blue, UIColor.green, UIColor.purple, UIColor.orange, UIColor.blue, UIColor.green, UIColor.blue, UIColor.green]
    
    // a property to hold the collectionView!
    var collectionView: UICollectionView!
    
    override func loadView() {
        // create a layout to be used
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // make sure that there is a slightly larger gap at the top of each row
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        // set a standard item size of 60 * 60
        layout.itemSize = CGSize(width: 80, height: 80)
        // the layout scrolls horizontally
        layout.scrollDirection = .vertical
        // set the frame and layout
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        // set the view to be this UICollectionView
        self.view = collectionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    // MARK: Setup Collection View
    private func setupCollectionView() {
        guard let collectionView = collectionView else {return}
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = .systemGray2
    }
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Collection view at row \(collectionView.tag) selected index path")
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let data = self.data[indexPath.item]
        cell.backgroundColor = data
        return cell
    }
}

