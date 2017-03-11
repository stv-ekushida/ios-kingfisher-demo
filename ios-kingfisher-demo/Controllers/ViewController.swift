//
//  ViewController.swift
//  ios-kingfisher-demo
//
//  Created by Kushida　Eiji on 2017/03/11.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = CollectionViewProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        collectionView.dataSource = dataSource
    }
}

