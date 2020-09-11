import UIKit

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currMin = array[0]
    var currMax = array[0]
    for value in array{
        print(value)
        if value < currMin{
            currMin = value
        }
        else if value > currMax {
            currMax = value
        }
    }
    return (currMin, currMax)
}

print(minMax(array: [25, 1, 2, 3, 4, -6, 11]))
