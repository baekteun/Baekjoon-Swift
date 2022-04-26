//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/08.
//

import Foundation
var res = 0
var stack: [String] = []
var input = readLine()!.map{$0}
for i in 0..<input.count{
    if input[i] == "("{
        stack.append("(")
    }
    else{
        if input[i-1] == "(" {
            stack.removeLast()
            res += stack.count
        }
        else{
            stack.removeLast()
            res += 1
        }
    }
    
}
print(res)
