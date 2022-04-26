//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/18.
//

import Foundation
var a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

var time = 0
if a < 0{
    let s = abs(a-0)
    a += s
    time = s * c
}
if a == 0{
    time += d
}
time += (b-a) * e
print(time)
