//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

var res = ""
let n = Int(readLine()!)!
for i in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int($0)!}
    let x = input[0]
    let y = input[1]
    let dist = y-x
    let max = Int(sqrt(Double(y-x)))
    if Double(max) == sqrt(Double(dist)){
        res += "\(2*max-1)\n"
    }else if(dist<=max*max + max){
        res += "\(2*max)\n"
    }else{
        res += "\(2*max+1)\n"
    }
    
}
print(res)
