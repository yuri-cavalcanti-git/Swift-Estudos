import UIKit

class Funcionario {
    let nome: String
    let salario: Double
    let cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calculaBonus() -> Double {
        return salario
    }
}

class Programador: Funcionario {
    let plataforma: String
    init(nome: String, salario: Double, cpf: String, plataforma: String) {
        self.plataforma = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaBonus() -> Double {
        return 1.20 * 12 * super.calculaBonus()
    }
    
}

class Designer: Funcionario {
    let ferramenta: String
    init(nome: String, salario: Double, cpf: String, ferramenta: String) {
        self.ferramenta = ferramenta
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaBonus() -> Double {
        return 1.15 * 12 * super.calculaBonus()
    }
    
}


let progA = Programador(nome: "Anderson",
                        salario: 9800.15,
                        cpf: "000000",
                        plataforma: "iOS")

let designerB = Designer(nome: "Mateus",
                         salario: 6000.28,
                         cpf: "1824",
                         ferramenta: "Adobe Cloud")

print(progA.calculaBonus())
print(designerB.calculaBonus())
