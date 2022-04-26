//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/12.
//

var n = Int(readLine()!)!
var res = ""
while n != 0{
    var arr = [String]()
    for _ in 0..<n{ arr.append(readLine()!) }
    res += "\(arr.sorted {$0.lowercased() < $1.lowercased()}.first!)\n"
    n = Int(readLine()!)!
}
print(res)
