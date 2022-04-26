//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/01.
//

var input = Int(readLine()!)!
var res: Int = 2432902008176640000
var ans = "YES"
if !(input != 0){
    input = -1
}
for i in stride(from: 20, to: 0, by: -1){
    res /= i
    if input >= res{
        input -= res
    }
}
print((input != 0) ? "NO" : "YES")

