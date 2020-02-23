//
//  HomeViewCell.swift
//  VIP_TEST
//
//  Created by OuSS on 2/23/20.
//  Copyright © 2020 OuSS. All rights reserved.
//

import UIKit
import SDWebImage

class HomeViewCell: UICollectionViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var artist: Artists.Artist? {
        didSet {
            guard let artist = artist else { return }
            imageV.sd_setImage(with: URL(string: artist.artworkUrl100))
            titleLabel.text = artist.artistName
            priceLabel.text = artist.kind
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
