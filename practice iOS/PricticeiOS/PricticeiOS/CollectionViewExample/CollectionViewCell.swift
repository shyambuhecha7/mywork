//
//  CollectionViewCell.swift
//  PricticeiOS
//
//  Created by Shyam Buhecha on 25/07/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(movie: Movie) {
        img.image = movie.movieImg
        lblTitle.text = movie.movieTitle
    }
}
