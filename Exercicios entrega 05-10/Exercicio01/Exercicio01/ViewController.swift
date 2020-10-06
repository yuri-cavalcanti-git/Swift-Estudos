//
//  ViewController.swift
//  Exercicio01
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewMain: UITableView!
    
    var arrayemployees = [Employee] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewMain.delegate = self
        tableViewMain.dataSource = self
        
        for item in 0...14 {
            arrayemployees.append(Employee(name: "\(item + 1) Empregado", position: "\(item + 1) Cargo", email: "\(item + 1)@gmail"))
        }
        
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewEmployeeModalDetail = UIStoryboard(name: "EmployeeModalViewController", bundle: nil).instantiateInitialViewController() as? EmployeeModalViewController {
            
            viewEmployeeModalDetail.employee = arrayemployees[indexPath.row]
            present(viewEmployeeModalDetail, animated: true, completion: nil)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayemployees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTableViewCell", for: indexPath) as! EmployeeTableViewCell
        cell.setup(employee: arrayemployees[indexPath.row])
        
        return cell
    }
    
    
}

