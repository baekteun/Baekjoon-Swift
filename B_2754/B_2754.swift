//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/07.
//

import Foundation

let input = readLine()!.map{String($0)}
var res = 0.0
switch input[0]{
case "A":
    res += 4.0
case "B":
    res += 3.0
case "C":
    res += 2.0
case "D":
    res += 1.0
default:
    print(0.0)
    exit(0)
}
switch input[1]{
case "+":
    res += 0.3
case "-":
    res -= 0.3
default:
    res += 0.0
}
print(res)
