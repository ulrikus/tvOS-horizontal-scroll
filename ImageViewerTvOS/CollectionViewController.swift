//
//  CollectionViewController.swift
//  ImageViewerTvOS
//
//  Created by Utheim Sverdrup, Ulrik on 30.10.2017.
//  Copyright © 2017 Sverdrup, Ulrik Utheim. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.registerNib(CustomCollectionViewCell.self)
    }


    // MARK: - Collection View

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> CustomCollectionViewCell {
        let cell = collectionView.dequeue(CustomCollectionViewCell.self, for: indexPath)
        cell.titleLabel.text = "Tittel \(indexPath.row+1)"
        cell.locationLabel.text = "Sted \(indexPath.row+1)"
        if indexPath.row % 5 == 0 {
            cell.imageView.image = #imageLiteral(resourceName: "nature-forest-industry-rails")
        } else if indexPath.row % 4 == 0 {
            cell.imageView.image = #imageLiteral(resourceName: "testImageRecipe3")
        } else if indexPath.row % 3 == 0 {
            cell.imageView.image = #imageLiteral(resourceName: "finnKatt")
        } else if indexPath.row % 2 == 0 {
            cell.imageView.image = #imageLiteral(resourceName: "blackPug")
        } else {
            cell.imageView.image = #imageLiteral(resourceName: "testImageRecipe2")
        }
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

// MARK: - Collection View Layout

extension CollectionViewController: UICollectionViewDelegateFlowLayout {

}

