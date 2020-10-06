//
//  EmployeeModalViewController.swift
//  Exercicio01
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class EmployeeModalViewController: UIViewController {
   
    var employee: Employee?
    
    @IBOutlet weak var labelNome: UILabel!
    

    @IBAction func buttonClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelNome.text = employee?.name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
