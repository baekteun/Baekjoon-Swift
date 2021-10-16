//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map{String($0)}
print(addBinary(input[0], input[1]))

func addBinary(_ A: String, _ B: String) -> String {
    var res = ""
    let a = Array(A)
    let b = Array(B)
    var indexA = a.count - 1
    var indexB = b.count - 1
    var carry = 0
    while indexA >= 0 || indexB >= 0 || carry > 0 {
        var sum = carry
        if indexA >= 0{
            sum += Int(String(a[indexA]))!
            indexA -= 1
        }
        if indexB >= 0{
            sum += Int(String(b[indexB]))!
            indexB -= 1
        }
        res = "\(sum%2)"+res
        carry = sum/2
    }
    let s = res.firstIndex(of: "1")
    res = res.substring(from: (s ?? res.lastIndex(of: "0"))!)
    return res
}
