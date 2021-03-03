//
//  HomeViewController.swift
//  CustomLoginDemo
//
//  Created by Christopher Ching on 2019-07-22.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func inicialTapped(_ sender: UIButton) {
        let inicialDetail = storyboard?.instantiateViewController(identifier: "Inicial") as? ViewController
        
        view.window?.rootViewController = inicialDetail
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        guard let signUp = storyboard?.instantiateViewController(identifier: "SignUp") as? SignUpViewController else {return}
        //Embebedar via codigo
        let nav = UINavigationController()
        nav.pushViewController(signUp, animated: true)
        
        view.window?.rootViewController = nav
        view.window?.makeKeyAndVisible()
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
    }
    
}
