//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/27.
//

import Foundation

let input = Array(readLine()!)
var list = [String]()
for i in 0..<input.count-2{
    for k in i+1..<input.count-1{
        for m in k+1..<input.count{
            list.append("\(String(input[0..<k].reversed()))\(String(input[k..<m].reversed()))\(String(input[m...input.count-1].reversed()))")
        }
    }
}

print(list.sorted(by: <)[0])
