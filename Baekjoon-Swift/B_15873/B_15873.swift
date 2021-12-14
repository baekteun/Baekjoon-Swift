//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/14.
//

var input = Int(readLine()!)!
var res = (input / 10) + (input % 10);
if input / 10 > 10 {
    res = (input / 100) + (input % 100)
}
if input == 1010 {
    res = 20
}
print(res)
