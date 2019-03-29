import Foundation
import Glibc


public func solution(_ A : inout [Int], _ K : Int) -> [Int] {

    var array = A
    for _ in 0..<K {
        array = rotate(array)
    }
    return array
}

public func rotate (_ arrayIn :[Int]) -> [Int] {

    var arrayOut:[Int] = []

    //test 0
    if arrayIn.count == 0 {
        return arrayIn
    }

    //test 1
    if arrayIn.count == 1 {
        return arrayIn
    }

    //add last

    arrayOut.append(arrayIn.last!)

    //for (index, element) in array {
    for i in 0..<arrayIn.count-1 {
        arrayOut.append(arrayIn[i])
    }

    //print("in: \(arrayIn)")
    //print("out: \(arrayOut)")
    return arrayOut
}
