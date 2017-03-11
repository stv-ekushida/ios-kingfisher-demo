//
//  ImageCollectionViewProvider.swift
//  ios-kingfisher-demo
//
//  Created by Kushida　Eiji on 2017/03/11.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit
import Kingfisher

final class CollectionViewProvider:NSObject, UICollectionViewDataSource {
    
    /// セクションごとのセル数を返す
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    /// セルに値を設定する
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier,
                                                      for: indexPath) as! ImageCollectionViewCell
                
        let url = URL(string: "\(Constrants.baseURL)kingfisher-\(indexPath.row + 1).jpg")!
        
        _ = cell.imageView.kf.setImage(with: url,
                                           placeholder: nil,
                                           options: [.transition(ImageTransition.fade(1)), .keepCurrentImageWhileLoading],
                                           progressBlock: { receivedSize, totalSize in
                                            print("\(indexPath.row + 1): \(receivedSize)/\(totalSize)")
        },
                                           completionHandler: { image, error, cacheType, imageURL in
                                            print("\(indexPath.row + 1): Finished")
        })
        
        return cell
    }    
}
