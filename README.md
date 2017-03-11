# ios-kingfisher-demo
非同期に画像を取得することができるライブラリ

## 1. PodFile

```
pod 'Kingfisher', '3.5.1'
```

## 2. import する
```
import Kingfisher
```

## 3. 使い方(Usage)
```
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

```
