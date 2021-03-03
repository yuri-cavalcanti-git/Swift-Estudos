import UIKit

func exponencial(x: Int, n: Int) -> Int {
    if n == 0 {

        return 1
    } else {

        return x * exponencial(x: x, n: n-1)
    }

}

print(exponencial(x: 3, n: 2))
