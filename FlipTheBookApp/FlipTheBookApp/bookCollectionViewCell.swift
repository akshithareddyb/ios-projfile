//
//  bookCollectionViewCell.swift
//  FlipTheBookApp
//
//  Created by student on 4/23/22.
//

import UIKit

class bookCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignBook(_ book: Book){
            imageViewOutlet.image = book.image
        }
}
