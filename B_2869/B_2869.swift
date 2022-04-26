//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

let n = readLine()!.split(separator:" ").map{Int($0)!}
let res = (n[2]-n[1])/(n[0]-n[1])
if (n[2]-n[1]) % (n[0]-n[1]) != 0{
    print(res + 1)
}else{
    print(res)
}
