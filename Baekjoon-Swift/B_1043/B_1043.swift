//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let know = readLine()!.split(separator: " ").map{Int(String($0))!}
var people = Array(repeating: [Int](), count: input[0]+1)
var parties = Array(repeating: [Int](), count: input[1])
var visited = Array(repeating: false, count: input[0]+1)
for i in 0..<input[1] {
    let q = readLine()!.split(separator: " ").map{Int(String($0))!}
    for k in 1..<q.count {
        people[q[k]].append(i)
        parties[i].append(q[k])
    }
}

for i in 1..<know.count {
    find(know[i])
}
var res = 0
for i in 0..<input[1] {
    res += parties[i].filter{visited[$0] == false}.count > 0 ? 1 : 0
}
print(res)



func find(_ idx: Int) {
    for party in people[idx] {
        for pe in parties[party] {
            if visited[pe] {
                continue
            }
            visited[pe] = true
            find(pe)
        }
    }
}
