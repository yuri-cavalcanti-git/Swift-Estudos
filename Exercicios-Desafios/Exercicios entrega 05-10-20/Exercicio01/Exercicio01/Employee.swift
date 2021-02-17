//
//  Employee.swift
//  Exercicio01
//
//  Created by Yuri Cavalcanti on 05/10/20.
//

import Foundation
import UIKit

class Employee {
    var name: String
    var position: String
    var email: String
    
    init(name: String, position: String, email: String) {
        self.name = name
        self.position = position
        self.email = email
    }
}
