//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/19.
//

guard let n = Int(readLine()!) else { fatalError() }
for i in 0..<n{
    for _ in 0..<n-i-1 {print(" ",terminator: "")}
    for _ in 0..<2*i+1 {print("*",terminator: "")}
    print("")
}
