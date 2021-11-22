//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/22.
//

import Foundation

var buffer = Array<UInt8>(repeating: 0, count: 1<<17)
var index = 1<<17

@inline(__always) func read() -> UInt8 {
    defer { index+=1 }
    if index == 1<<17 {
        fread(&buffer, 1, 1<<17, stdin)
        index = 0
    }
    return buffer[index]
}

@inline(__always) func readInt() -> Int {
    var sum = 0
    var now = read()

    while (now == 10 || now == 32) { now = read() } 
    while now >= 48, now <= 57 {
        sum *= 10
        sum += Int(now-48)
        now = read()
    }

    return sum
}

var arr = Array(repeating: 0, count: 1000000)

while true {
    let n = readInt()
    let m = readInt()

    if n+m == 0 {
        break
    }

    for i in 0..<n {
        arr[i] = readInt()
    }

    var index = 0
    var answer = 0
    for _ in 0..<m {
        let cd = readInt()

        while index<n,arr[index]<=cd {
            if arr[index]==cd {
                answer+=1
            }

            index+=1
        }
    }

    print(answer)
}
