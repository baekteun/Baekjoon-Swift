//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/20.
//

let t = Int(readLine()!)!
var dict: [String:Int] = [:]
for _ in 0..<t{
    let input = readLine()!
    dict[input] = (dict[input] ?? 0) + 1
}
print(dict.sorted(by: {$0.key < $1.key}).sorted(by: {$0.value > $1.value}).first!.key)
