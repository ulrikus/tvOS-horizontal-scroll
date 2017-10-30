//
//  CustomCollectionViewCell.swift
//  ImageViewerTvOS
//
//  Created by Utheim Sverdrup, Ulrik on 30.10.2017.
//  Copyright © 2017 Sverdrup, Ulrik Utheim. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    private var gradientLayer: CAGradientLayer?

    override func awakeFromNib() {
        super.awakeFromNib()

//        fadeBottom(of: imageView)
    }

//    func fadeBottom(of imageView: UIImageView) {
//        let gradient = CAGradientLayer()
//        let endColor = UIColor(white: 0, alpha: 0.8)
//
//        gradient.frame = imageView.bounds
//        gradient.colors = [UIColor.clear.cgColor, endColor.cgColor]
//        gradient.locations = [0.7, 1]
//
//        imageView.layer.insertSublayer(gradient, at: 0)
//        gradientLayer = gradient
//    }
}
