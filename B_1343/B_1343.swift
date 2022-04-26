//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/02.
//

import Foundation

let read = readLine()!
var len = 0
var res = ""
for i in read{
    if i == "X"{ len += 1 }
    else{
        if len != 0{
            tran()
        }
        res += "."
        len = 0
    }
}
tran()
print(res)
func tran(){
    if len % 2 == 0{
        res += String(repeating: "AAAA", count: len / 4)
        len %= 4
        if len-2 == 0 { res += "BB" }
    }
    else{
        print("-1")
        exit(0)
    }
}
