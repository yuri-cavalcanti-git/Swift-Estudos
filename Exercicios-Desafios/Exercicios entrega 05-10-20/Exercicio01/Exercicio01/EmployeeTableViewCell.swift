//
//  EmployeeTableViewCell.swift
//  Exercicio01
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPosition: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    
    func setup(employee: Employee){
        labelName.text = employee.name
        labelPosition.text = employee.position
        labelEmail.text = employee.email
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
