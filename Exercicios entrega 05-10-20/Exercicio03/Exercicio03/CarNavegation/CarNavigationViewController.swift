//
//  CarNavigationViewController.swift
//  Exercicio03
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class CarNavigationViewController: UIViewController {
    
    var car: Car?
    
    @IBOutlet weak var imageViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //PQ PReciso deste IF???
        if let car = car {
            imageViewImage.image = UIImage(named: car.image)
        }

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
