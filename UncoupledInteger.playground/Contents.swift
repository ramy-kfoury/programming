//: Playground - noun: a place where people can play

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

func amazingFindUncoupledInteger(inArray array: [Int]) -> Int {
    var result = 0
    for i in 0..<count(array) {
        result ^= array[i]
    }
    return result
}

let culprit = findUncoupledInteger(inArray: intArray)
let culprit2 = amazingFindUncoupledInteger(inArray: intArray)