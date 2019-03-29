import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(inout A : [Int]) -> Int {

    if A.count == 0 {
        return 0
    }

    for i in 0..<A.count {
        if !A.contains(i+1) {
            return 0
        }
    }

    return 1

}
