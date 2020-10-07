//
//  AnimalViewController.swift
//  Exercicio2
//
//  Created by Yuri Cavalcanti on 06/10/20.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var animal: Animal?
    
    @IBOutlet weak var labelName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let animal = animal {
            labelName.text = animal.name
        }

    }
    
    
    @IBAction func buttonClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
