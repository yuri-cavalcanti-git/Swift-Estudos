//
//  AnimalCell.swift
//  Exercicio02
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWheight: UILabel!
    @IBOutlet weak var labelSpecies: UILabel!
    

    
    func setup (animal: Animal){
        labelName.text = animal.name
        labelBreed.text = animal.breed
        labelWheight.text = String(animal.wheight)
        labelSpecies.text = animal.species
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
