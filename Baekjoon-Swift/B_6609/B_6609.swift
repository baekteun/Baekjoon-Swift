//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/19.
//

import Foundation

while true{
    let read = readLine()
    guard let read = read else { break }
    if read.isEmpty{
        break
    }
    let input = read.split(separator: " ").map{Int($0)!}
    var M = input[0]; var P = input[1]
    var L = input[2]; let E = input[3]
    let R = input[4]; let S = input[5]
    let N = input[6]
    var mosq = M
    var larva = L
    var cocoon = P
    for _ in 0..<N{
        L = mosq*E
        P = larva / R
        M = cocoon / S
        
        mosq = M
        cocoon = P
        larva = L
    }
    print(mosq)
}


