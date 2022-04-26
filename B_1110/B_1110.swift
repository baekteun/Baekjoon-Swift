//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/19.
//

import Foundation

let x = Int(readLine()!)!
var n = x
var count = 0
while true{
    let a = (n/10) + (n%10)
    n = ((n%10) * 10) + a%10
    count += 1
    if n == x{
        print(count)
        break
    }
}
