//
//  SubclassedCollectionViewCell.swift
//  UICollectionView-viewCode-1
//
//  Created by Gabriel on 07/01/22.
//

import UIKit

class SubclassedCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupCell(colour: UIColor) {
            self.backgroundColor = colour
        }
}
