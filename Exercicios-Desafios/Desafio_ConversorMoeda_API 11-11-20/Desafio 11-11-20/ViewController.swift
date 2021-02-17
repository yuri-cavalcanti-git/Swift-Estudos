//
//  ViewController.swift
//  Desafio 11-11-20
//
//  Created by Yuri Cavalcanti on 11/11/20.
//

import UIKit
import Alamofire




class ViewController: UIViewController {

    @IBOutlet weak var textFieldInput: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    
    var currency: Currency?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadAlamofire()
        
        
        //textFieldInput.delegate = self
    }
    
    
    @IBAction func actionToConvert(_ sender: Any) {
        loadAlamofire()
        if let currency = currency {
            let alert = openActionSheet(currency: currency)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    func loadAlamofire() {
        AF.request("https://api.exchangeratesapi.io/latest?symbols=USD,BRL&base=USD").responseJSON { response in
            if let dictionary = response.value as? [String: Any] {
                let currency = Currency(fromDictionary: dictionary)
                
                self.currency = currency
                print(dictionary)
                print(currency.valueBrl)
                print(currency.valueUsa)
            }
        }
    }
    
    func openActionSheet(currency: Currency) -> UIAlertController{
        let alert = UIAlertController(title: "Conversor de Moeda", message: "Escolha a moeda base e a moeda destino", preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Real para Dolar", style: .default, handler: { (action) in
            print("Real para Dolar")
            let result = self.toConvertRealToDola(currency: currency)
            self.showResult(result: result, sign: "$")
        }))

        alert.addAction(UIAlertAction(title: "Dolar para Real", style: .default, handler: { (action) in
            print("Dolar para Real")
            let result = self.toConvertDolarToReal(currency: currency)
            self.showResult(result: result, sign: "R$")
        }))

        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action) in
            print("User click Dismiss button")
        }))
        
        return alert
    }

    func toConvertDolarToReal(currency: Currency) -> Double {
        guard let brl = currency.valueBrl else { return 0.0 }
        guard let valueToConvert = Double(textFieldInput.text!) else { return 0.0 }
        print(valueToConvert * brl)
        return valueToConvert * brl
    }
    func toConvertRealToDola(currency: Currency) -> Double {
        guard let brl = currency.valueBrl else { return 0.0 }
        guard let valueToConvert = Double(textFieldInput.text!) else { return 0.0 }
        print(valueToConvert / brl)
        return valueToConvert / brl
    }
    func showResult(result: Double, sign: String) {
        labelResult.text = ("\(sign) \(String(format: "%.2f", result))")
    }
    
}



//extension ViewController: UITextFieldDelegate {print(valueToConvert * brl)
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        textFieldInput.becomeFirstResponder()
//    }
//}
