//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
var arr = [Int](repeating: 0, count: 21)
arr[0] = 0
arr[1] = 1

print(fibo(x: Int(readLine()!)!))
func fibo(x: Int) -> Int{
    if x==0{
        return 0
    }
     if arr[x] != 0{
        return arr[x]
    }
    arr[x] = fibo(x: x-1) + fibo(x: x-2)
    return arr[x]
}



