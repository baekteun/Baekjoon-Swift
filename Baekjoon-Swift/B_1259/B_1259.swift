//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/07.
//


var input = readLine()!

while input != "0"{
    print(isPalin(input) ? "yes" : "no")
    input = readLine()!
}


func isPalin(_ str: String) -> Bool{
    let arr = str.map{String($0)}
    var res = true
    for i in 0..<arr.count/2{
        if arr[i] != arr[arr.count-1-i]{
            res = false
        }
    }
    return res
}
