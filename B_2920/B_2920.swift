//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/17.
//

let input = readLine()!.split(separator: " ").map{String($0)}.joined()
let s = "12345678"
if input == s{
    print("ascending")
}else if input == String(s.reversed()){
    print("descending")
}else{
    print("mixed")
}

