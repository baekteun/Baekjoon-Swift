//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/21.
//

var arr: [Int] = []
for _ in 0..<9{
    arr.append(Int(readLine()!)!)
}
print("\(arr.max()!) \(arr.index(0, offsetBy: arr.firstIndex(of: arr.max()!)!)+1)")
