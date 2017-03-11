//
//  ImageCollectionViewCell.swift
//  ios-kingfisher-demo
//
//  Created by Kushida　Eiji on 2017/03/11.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }
    
    override func prepareForReuse() {
        self.imageView.image = nil;
    }
}
