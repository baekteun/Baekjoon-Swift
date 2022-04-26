//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/21.
//

let t = Int(readLine()!)!
for _ in 0..<t{
    readLine()!.split(separator: " ").map{String($0)}.forEach{print(String($0.reversed()),terminator: " ")}
    print("")
}
