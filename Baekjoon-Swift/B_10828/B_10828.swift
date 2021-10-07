//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
let n = Int(readLine()!)!

var res = ""
var q: [Int] = []
for _ in 0..<n{
    
    let command = readLine()!.split(separator:" ").map{$0}
    let com = command[0]
    switch com{
    case "push":
        q.append(Int(command[1])!)
        break
    case "pop":
        if q.isEmpty{
            res += "-1"
        }else{
            res += "\(q.removeLast())"
        }
        res += "\n"
        break
    case "size":
        res += "\(q.count)\n"
        break
    case "empty":
        res += q.isEmpty ? "1" : "0"
        res += "\n"
        break
    case "top":
        if q.isEmpty{
            res += "-1"
        }else{
            res += "\(q.last!)"
        }
        res += "\n"
        break
    default: break
    }
    
}
print(res)
