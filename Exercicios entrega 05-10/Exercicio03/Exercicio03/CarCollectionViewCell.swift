//
//  CarCollectionViewCell.swift
//  Exercicio03
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var imageViewImage: UIImageView!
    
    func setup(car: Car){
        labelName.text = car.name
        imageViewImage.image = UIImage(named: car.image)
    }
}
