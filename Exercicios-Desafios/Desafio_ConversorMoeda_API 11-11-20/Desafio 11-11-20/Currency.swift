//
//  Currency.swift
//  Desafio 11-11-20
//
//  Created by Yuri Cavalcanti on 11/11/20.
//

import Foundation
import UIKit

class Currency: NSObject {


    
    var rates: [String: Any]?
    var valueUsa: Double?
    var valueBrl: Double?
    
    init(fromDictionary dictionary: [String: Any]) {
        rates = dictionary["rates"] as? [String: Any]
        valueUsa = rates?["USD"] as? Double
        valueBrl = rates?["BRL"] as? Double
    }
}

//        "BRL": 5.4253782084,
//        "USD": 1.0


