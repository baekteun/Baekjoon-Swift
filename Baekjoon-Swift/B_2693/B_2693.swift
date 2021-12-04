//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/04.
//

let t = Int(readLine()!)!
for _ in 0..<t{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()[7]
    print(input)
}
