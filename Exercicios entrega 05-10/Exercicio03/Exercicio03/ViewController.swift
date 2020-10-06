//
//  ViewController.swift
//  Exercicio03
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionViewMain: UICollectionView!
    
    var arraycars = [Car] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewMain.delegate = self
        collectionViewMain.dataSource = self
        
        for item in 0...9 {
            arraycars.append(Car(name: "Car \(item + 1)", image: "1.jpg"))
        }
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let carNavigationDetail = UIStoryboard(name: "CarNavigationViewController", bundle: nil).instantiateInitialViewController() as? CarNavigationViewController {
            
            carNavigationDetail.car = arraycars[indexPath.row]
            navigationController?.pushViewController(carNavigationDetail, animated: true)
        }
        
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arraycars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        let car = arraycars[indexPath.row]
        cell.setup(car: car)
        
        return cell
        
    }
    
    
}
