//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/29.
//

let input = readLine()!.split(separator: " ").map{String($0)}
var res = Int.max
for i in 0..<(input[1].count - input[0].count + 1){
    var count = 0
    for k in 0..<input[0].count{
        if Array(input[0])[k] != Array(input[1])[i+k]{
            count += 1
        }
    }
    res = min(res, count)
}
print(res)
