//
//  ViewController.swift
//  Exercicio4
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionViewMain: UICollectionView!
    
    var arrayNames = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewMain.delegate = self
        collectionViewMain.dataSource = self
        
        for i in 0...19 {
            arrayNames.append("\(i + 1) Nome")
        }
    }


}

extension ViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayNames.remove(at: indexPath.row)
        collectionView.reloadData()
    }
    
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NameCell", for: indexPath) as! NameCell
        
        cell.setup(name: arrayNames[indexPath.row])
        
        
        return cell
    }
    
    
}
   
