//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/18.
//

var total = 0
var res = 0

for _ in 1 ... 4 {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    total += input[1] - input[0]
    res = res > total ? res : total
}
print(res)
