//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/22.
//

var arr = Array(repeating: 0, count: 42)
for _ in 0..<10{
    let input = Int(readLine()!)!
    arr[input%42] += 1
}
var count = 0
for i in arr{
    if i != 0{
        count += 1
    }
}
print(count)
