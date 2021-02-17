//
//  NameCell.swift
//  Exercicio4
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class NameCell: UICollectionViewCell {
    @IBOutlet weak var labelNome: UILabel?
    
    func setup(name: String) {
        labelNome?.text = name
    }
}
