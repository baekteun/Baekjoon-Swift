//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/21.
//

import Foundation

var g = 1
for _ in 0..<3{
    g *= Int(readLine()!)!
}
var res = ""
var word = "\(g)"

for i in 0...9{
    var count = 0
    while word.contains("\(i)"){
        word.remove(at: word.firstIndex(of: Character("\(i)"))!)
        count += 1
    }
    res += "\(count)\n"
}
print(res)
