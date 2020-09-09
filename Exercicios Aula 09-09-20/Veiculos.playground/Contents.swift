import UIKit

import UIKit

class Veiculo {
    let cor: String
    let preco: Double
    let passageiros: Int
    
    init(cor: String, preco: Double, passageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.passageiros = passageiros
    }
    
    func calcCombustivel(distancia: Double) -> Double {
        return distancia * Double(passageiros)
    }
}

class Carro: Veiculo {
    let rodaTamanho: Int
    
    init(cor: String, preco: Double, passageiros: Int, rodaTamanho: Int) {
        self.rodaTamanho = rodaTamanho
        super.init(cor: cor, preco: preco, passageiros: passageiros)
    }
    
    override func calcCombustivel(distancia: Double) -> Double {
        return Double(super.passageiros) * Double(rodaTamanho) * distancia
    }
}


class Aviao: Veiculo {
    let piloto: String
    let companhia: String
    
    init(cor: String,
         preco: Double,
         passageiros: Int,
         piloto: String,
         companhia: String) {
        
        self.piloto = piloto
        self.companhia = companhia
        
        super.init(cor: cor, preco: preco, passageiros: passageiros)
        
    }

    override func calcCombustivel(distancia: Double) -> Double {
        return Double(super.passageiros) * distancia
    }
}


let fusca = Carro(cor: "Azul", preco: 1000.00, passageiros: 4, rodaTamanho: 20)
let boeing747 = Aviao(cor: "Branco", preco: 100000.00, passageiros: 410,
                      piloto: "Vanderlei", companhia: "Azul")

print(fusca.calcCombustivel(distancia: 245.0))
print(boeing747.calcCombustivel(distancia: 1528.18))
