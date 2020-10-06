//
//  ViewController.swift
//  Exercicio02
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewMain: UITableView!
    
    var arrayAnimals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMain.delegate = self
        tableViewMain.dataSource = self
        
        arrayAnimals.append(Animal(name: "Bolinha", breed: "Vira-Lata", wheight: 5, species: "Cachorro"))
        arrayAnimals.append(Animal(name: "Piu-Piu", breed: "Sei lá", wheight: 2, species: "Passaro"))
        arrayAnimals.append(Animal(name: "Miau", breed: "Vira-Lata", wheight: 4, species: "Gato"))
        arrayAnimals.append(Animal(name: "Fish", breed: "Peixe-Marinho", wheight: 1, species: "Peixe"))
        arrayAnimals.append(Animal(name: "Pitoco", breed: "Pastor Alemão", wheight: 10, species: "Cachorro"))
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        cell.setup(animal: arrayAnimals[indexPath.row])
        return cell
    }
    
    
}

