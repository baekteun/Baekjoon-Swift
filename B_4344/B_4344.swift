//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/25.
//

import Foundation

let t = Int(readLine()!)!
var res = ""
for _ in 0..<t{
    var score = readLine()!.split(separator: " ").map{Int($0)!}
    score.removeFirst()
    let ave = score.reduce(0, +) / score.count
    let high = score.filter{ $0 > ave}
    res += "\(String(format: "%.3f", round(Double(high.count)/Double(score.count)*100000)/1000))%\n"
}
print(res)
