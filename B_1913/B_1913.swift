//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/03.
//

import Foundation

let dx = [1,0,-1,0]
let dy = [0,1,0,-1]
let n = Int(readLine()!)!
let m = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
var num = n*n
if n == 1{
    print("1")
    print("1 1")
    exit(0)
}
for p in 0..<n/2{
    for i in p..<n-p{
        arr[i][p] = num
        num -= 1
    }
    for i in p+1..<n-p{
        arr[n-p-1][i] = num
        num -= 1
    }
    for i in stride(from: n-p-2, through: p, by: -1){
        arr[i][n-p-1] = num
        num -= 1
    }
    for i in stride(from: n-p-2, to: p, by: -1){
        arr[p][i] = num
        num -= 1
    }
    arr[n/2][n/2] = 1
}
var res = ""
for (i,j) in arr.enumerated(){
    for (k,l) in j.enumerated(){
        if l == m {res="\(i+1) \(k+1)"}
        print(arr[i][k], terminator: " ")
    }
    print("")
}
print(res)
