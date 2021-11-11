//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/11.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
var set1 = Set<String>()
var set2 = Set<String>()
(0..<input[0]).forEach{ _ in
    set1.insert(readLine()!)
}
(0..<input[1]).forEach { _ in
    set2.insert(readLine()!)
}
let arr = set1.intersection(set2).sorted()
print(arr.count)
print(arr.joined(separator: "\n"))
