import UIKit

class Person {
    var name: String
    var birthday: String
    var cpf: Int
    var address: String
    var email: String
    var phone: Int
    
    init(name: String, birthday: String, cpf: Int, address: String, email: String, phone: Int) {
        self.name = name
        self.birthday = birthday
        self.cpf = cpf
        self.address = address
        self.email = email
        self.phone = phone
    }
    
    func insertPerson() {
        print("Pessoa Cadastrada")
    }
    func updatePerson() {
        print("Dados Atualizados")
    }
    func deletePerson() {
        print("Pessoa Deletada")
    }
    
}

class Employee: Person {
    var salary: Double
    var department: String
    var hiringDate: String
    
    init(name: String, birthday: String, cpf: Int, address: String, email: String, phone: Int, salary: Double, department: String, hiringDate: String) {
        self.salary = salary
        self.department = department
        self.hiringDate = hiringDate
        super.init(name: name, birthday: birthday, cpf: cpf, address: address, email: email, phone: phone)
    }
    
    func receiveSalary() {
        print("Receber salário")
    }
    func setShift() {
        print("Turno definido")
    }
    func organizeStock() {
        print("Estoque Organizado")
    }
}

class Client: Person {
    var cardNumber: Int
    var purchaseId: Int
    var paymentMethod: String
    
    init(name: String, birthday: String, cpf: Int, address: String, email: String, phone: Int, cardNumber: Int, purchaseId: Int, paymentMethod: String) {
        self.cardNumber = cardNumber
        self.purchaseId = purchaseId
        self.paymentMethod = paymentMethod
        super.init(name: name, birthday: birthday, cpf: cpf , address: address, email: email, phone: phone)
    }
    func makePayment() {
        print("Pagamento efetado")
    }
    func order() {
        print("Pedido realizado")
    }
}

let yuri = Client(name: "Yuri Cavalcanti", birthday: "23-06-1984", cpf: 22682585809, address: "Rua 10 - São Paulo", email: "@.com", phone: 5524-1412, cardNumber: 123456, purchaseId: 5559, paymentMethod: "Cartão de Crédito")
print("Nome: \(yuri.name), Data de Nascimento: \(yuri.birthday)")
yuri.insertPerson()
yuri.order()
yuri.makePayment()

let dayane = Employee(name: "Dayane Gomes", birthday: "27-01-1988", cpf: 12345678, address: "Rua João - Campinas",email: "@gmail", phone: 5555-1111, salary: 5425.76, department: "ADM", hiringDate: "15-09-2015")
print("Nome: \(dayane.name), Departamento: \(dayane.department), Salario R$\(dayane.salary)")
dayane.updatePerson()
dayane.receiveSalary()
dayane.setShift()
