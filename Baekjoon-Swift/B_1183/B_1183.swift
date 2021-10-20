//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/20.
//

import Foundation

let N = Int(readLine()!)!
var arr = [Int](repeating: 0, count: N)
for i in 0..<N{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    arr[i] = input[0] - input[1]
}
arr.sort()

print(N%2 != 0 ? "1":"\(abs(arr[N/2]-arr[N/2-1])+1)")
