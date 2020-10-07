//
//  Animal.swift
//  Exercicio2
//
//  Created by Yuri Cavalcanti on 06/10/20.
//

import Foundation
import UIKit

class Animal {
    var name: String
    var breed: String
    var wheight: Double
    var species: String
    
    init(name: String, breed: String, wheight: Double, species: String) {
        self.name = name
        self.breed = breed
        self.wheight = wheight
        self.species = species
    }
}
