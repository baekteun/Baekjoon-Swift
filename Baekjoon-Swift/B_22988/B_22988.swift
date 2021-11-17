//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/17.
//

let n = readLine()!.split(separator: " ").map{Int($0)!}
let limit = n[1]
var input = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var res = 0
var start = 0
var end = input.count-1
var count = input.count
while start <= end{
    if input[end] != limit{ break }
    res += 1
    end -= 1
    count -= 1
}
while start < end{
    if 2*(input[start] + input[end]) >= limit{
        res += 1
        start += 1
        end -= 1
        count -= 2
    }else{
        start += 1
    }
}
print(res + count/3)
