//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/21.
//

import Foundation
guard let read = readLine() else { exit(0) }
let input = read.split(separator: " ").map{Int($0)!}
if input[0] == 0{
    print("1")
    exit(0)
}
var rank: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var count = 0
var m_rank = 1
for i in rank{
    if input[1] < i{
        m_rank += 1
    }
    else if input[1] == i{}
    else { break }
    count += 1
}
if count == input[2]{
    m_rank = -1
}

print(m_rank)
