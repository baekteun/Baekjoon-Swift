//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/14.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let goal = input[0]
var current = input[1]
let limit = input[2]
let exe = input[3]
let rest = input[4]

var count = 0
var min = 0
if current+exe > limit{
    print(-1)
    exit(0)
}
while count != goal{
    if current+exe <= limit{
        current += exe
        count += 1
    }else{
        current -= rest
        if current < input[1]{
            current = input[1]
        }
    }
    min += 1
}
print(min)
