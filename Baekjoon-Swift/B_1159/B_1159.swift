//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/13.
//

import Foundation

let n = Int(readLine()!)!

var counting: [Int] = Array(repeating: 0, count: 27)
for _ in 0..<n{
    let input = readLine()!.first!
    counting[Int(input.asciiValue!)-97] += 1
    
    

}
var sign = false
for i in 0..<counting.count{
    if counting[i] >= 5{
        sign = true
        print(UnicodeScalar(i+97)!, terminator: "")
    }
}
if !sign{
    print("PREDAJA")
}


