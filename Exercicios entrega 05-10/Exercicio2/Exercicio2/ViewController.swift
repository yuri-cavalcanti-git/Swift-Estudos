//
//  ViewController.swift
//  Exercicio2
//
//  Created by Yuri Cavalcanti on 06/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewMain: UITableView?
    
    var arrayAnimals = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMain?.delegate = self
        tableViewMain?.dataSource = self
        
        arrayAnimals.append(Animal(name: "Pitoco", breed: "Vira-Lata", wheight: 5.3, species: "Carrocho"))
        arrayAnimals.append(Animal(name: "Miau", breed: "Vira-Lata", wheight: 3.3, species: "Gato"))
        arrayAnimals.append(Animal(name: "Fish", breed: "Sei lá", wheight: 0.7, species: "Peixe"))
        arrayAnimals.append(Animal(name: "Piu Piu", breed: "Galinacio", wheight: 2, species: "Galo"))
        arrayAnimals.append(Animal(name: "Veludo", breed: "Vira-Lata", wheight: 10.3, species: "Carrocho"))
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let animalViewDetail = UIStoryboard(name: "AnimalViewController", bundle: nil).instantiateInitialViewController() as? AnimalViewController {
            
            //Aviso para a AnimalViewController qual animal exibir no Label
            animalViewDetail.animal = arrayAnimals[indexPath.row]
            present(animalViewDetail, animated: true, completion: nil)
        }
    }
    
    //tamanho da celula
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayAnimals.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        
        cell.setup(animal: arrayAnimals[indexPath.row])
        
        return cell
    }
    
    
}
