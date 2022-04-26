//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/17.
//

import Foundation

let t = Int(readLine()!)!
var res = Array(readLine()!)
for i in 1..<t{
    let com = Array(readLine()!)
    for (k, m) in com.enumerated(){
        if res[k] != m{
            res[k] = "?"
        }
    }
}
print(res.map{String($0)}.joined())
