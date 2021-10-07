//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
let t = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)
var res = ""
for i in 1..<15{
    arr[i][1] = 1
    arr[0][i] = i
}
for _ in 0..<t{
    let K = Int(readLine()!)!
    let N = Int(readLine()!)!
    for i in 1...K{
        for k in 1...N{
            if(arr[i][k] != 0) {continue}
            arr[i][k] = arr[i-1][k] + arr[i][k-1]
        }
    }
    res += "\(arr[K][N])\n"
}
print(res)
