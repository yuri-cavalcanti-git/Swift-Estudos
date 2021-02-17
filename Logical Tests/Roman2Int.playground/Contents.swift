import UIKit

func romanToInt(roman: String) -> Int {
    let romanUper = roman.uppercased()
    var total = 0
    let numbers: [Character?: Int] = ["I": 1,
                                      "V": 5,
                                      "X": 10,
                                      "L": 50,
                                      "C": 100,
                                      "D": 500,
                                      "M": 1000]
    var i = 0
    
    
    while i < romanUper.count {
        let atual = romanUper[romanUper.index(romanUper.startIndex, offsetBy: i)]
        print(numbers[atual]!)
       
        var proximo: Character?
        if i < romanUper.count - 1 {
            proximo = romanUper[romanUper.index(romanUper.startIndex, offsetBy: i+1)]
        } else {
            proximo = nil
        }
        print(numbers[proximo ?? nil])


        if (proximo != nil) && numbers[proximo]! > numbers[atual]! {
            total -= numbers[atual]!
        } else {
            total += numbers[atual]!
        }
        i += 1
    }
    
    return total
}
print(romanToInt(roman: "xix"))
