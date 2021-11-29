//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/30.
//

let N = Int(readLine()!)!
var dict: [String:Bool] = [:]
for _ in 0..<N {
    let input = readLine()!
    let q = input.split(separator: " ").map{String($0).map{String($0).lowercased()}}
    var isFind = false
    var insert = (-1,-1)
    for i in 0..<q.count {
        if !(dict[q[i][0]] ?? false) {
            dict[q[i][0]] = true
            insert = (i,0)
            isFind = true
            break
        }
    }
    for i in 0..<q.count {
        if isFind { continue }
        for k in 1..<q[i].count {
            if !(dict[q[i][k]] ?? false) {
                dict[q[i][k]] = true
                insert = (i,k)
                isFind = true
                break
            }
        }
    }
    var ans = input.split(separator: " ").map{String($0).map{String($0)}}
    if insert != (-1,-1)  {
        ans[insert.0].insert("[", at: insert.1)
        ans[insert.0].insert("]", at: insert.1+2)
    }
    print(ans.map{$0.joined()}.joined(separator: " "))
}

