import UIKit

public class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta: Double
    
    // Metodo Construtor
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    //Função Get
    func getSaldo() -> Double {
        return saldoEmConta
    }
    
    //Método Privado - Atualizar Saldo
    private func atualizaSaldo(novoSaldo: Double) {
        saldoEmConta += novoSaldo
    }
    
    //Método Privado: Vendas Terno
    private func terno(quantidade: Int) {
        if quantidade < 3 {
            atualizaSaldo(novoSaldo: (Double(quantidade) * Double(400.00)))
        } else {
            atualizaSaldo(novoSaldo: (Double(quantidade) * Double(350.00)))
        }
    }
    
    //Método Privado: Vendas Vestido
    private func vestido(quantidade: Int) {
        if quantidade < 5 {
            atualizaSaldo(novoSaldo: Double(quantidade) * Double(900.00))
        } else {
            atualizaSaldo(novoSaldo: Double(quantidade) * Double(900.00) - 250)
        }
    }
    
    //Método Privado: Vendas Bone
    private func bone(quantidade: Int){
        if quantidade == 1 {
            atualizaSaldo(novoSaldo: 50)
        } else{
            let desconto = quantidade / 2
            atualizaSaldo(novoSaldo: Double(quantidade) * 50 - Double(desconto) * 50)
        }
    }
    
    //Método Venda
    func venda(tipo: String, quantidade: Int) {
        if tipo == "Terno" {
            terno(quantidade: quantidade)
        } else if tipo == "Vestido" {
            vestido(quantidade: quantidade)
        } else if tipo == "Bone" {
            bone(quantidade: quantidade)
        } else {
            print("Tipo não encontrado")
        }
        
    }
    
    
}

//Instanciação de objetos
var vendedorterno = Vendedor(nome: "Yuri", idade: 36, cpf: "1234", saldoEmConta: 0)

var vendedorvestido = Vendedor(nome: "Yuri", idade: 36, cpf: "1234", saldoEmConta: 0)

var vendedorbone = Vendedor(nome: "Yuri", idade: 36, cpf: "1234", saldoEmConta: 0)

vendedorterno.venda(tipo: "Terno", quantidade: 3)
print(vendedorterno.getSaldo())

print("\n ------------- \n")

vendedorvestido.venda(tipo: "Vestido", quantidade: 5)
print(vendedorvestido.getSaldo())

print("\n ------------- \n")

vendedorbone.venda(tipo: "Bone", quantidade: 6)
print(vendedorbone.getSaldo())

