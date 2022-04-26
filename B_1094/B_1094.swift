//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/24.
//

var input = Int(readLine()!)!
var res = 0
while input > 0{
    if input%2 == 1{
        res += 1
    }
    input /= 2
}
print(res)
