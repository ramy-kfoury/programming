import UIKit

var intArray = [1, 2, 3, 4, 1, 2, 3]

func findUncoupledInteger(inArray array: [Int]) -> Int? {
    var set = Set<Int>()
    for i in 0..<count(array) {
        let integer = array[i]
        if set.contains(integer) {
            set.remove(integer)
        } else {
            set.insert(integer)
        }
    }
    return set.first
}

func findUncoupledIntegerByXOR(inArray array: [Int]) -> Int {
    var result = 0
    for i in 0..<count(array) {
        result ^= array[i]
    }
    return result
}

func findUncoupledIntegerFunctionally(inArray array: [Int]) -> Int {
    return array.reduce(0) { $0 ^ $1 }
}

let uncoupled1 = findUncoupledInteger(inArray: intArray)
let uncoupled2 = findUncoupledIntegerByXOR(inArray: intArray)
let uncoupled3 = findUncoupledIntegerFunctionally(inArray: intArray)
