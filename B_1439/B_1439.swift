//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/30.
//

let input = readLine()!

var first = String(input.first!)
var count = 0
var tran = true
for i in input.map{String($0)} {
    if first != i && tran{
        count += 1
        tran = false
    }else if first == i && !tran{
        tran = true
    }
}
print(count)
