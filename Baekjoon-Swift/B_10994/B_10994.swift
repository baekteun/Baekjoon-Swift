//
//  B_10994.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
var res = ""
let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: " ", count: n*4-3), count: n*4-3)
star(x: n, idx: 0)
for i in arr{
    for k in i{
        print(k,terminator: "")
    }
    print("")
}

func star(x: Int, idx: Int){
    if x==1{
        arr[idx][idx] = "*"
        return
    }
    let len = x*4-3
    for i in stride(from: idx, to: idx+len, by: 1){
        arr[idx][i] = "*"
        arr[idx+len-1][i] = "*"
        arr[i][idx] = "*"
        arr[i][idx+len-1] = "*"
    }
    star(x: x-1, idx: idx+2)
}
