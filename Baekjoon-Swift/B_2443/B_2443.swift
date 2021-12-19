//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/20.
//

let n = Int(readLine()!)!
for i in stride(from: n, to: 0, by: -1){
    for _ in 0..<n-i {print(" ",terminator: "")}
    for _ in 0..<2*i-1 {print("*",terminator: "")}
    print("")
}
