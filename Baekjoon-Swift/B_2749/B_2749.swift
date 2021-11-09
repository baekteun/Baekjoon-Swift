//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/09.
//

var arr = Array(repeating: 0, count: 1_500_001)
arr[0] = 0
arr[1] = 1
for i in 2...1_500_000{
    arr[i] = (arr[i-1] + arr[i-2])%1_000_000
}
let n = Int(readLine()!)!
print(arr[n%1_500_000])
