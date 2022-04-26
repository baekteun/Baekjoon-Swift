//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/25.
//

import Foundation

var visited = Array(repeating: Array(repeating: false, count: 7), count: 7)
let dx = [1, 2, 2, 1, -1, -2, -2, -1]
let dy = [2, 1, -1, -2, 2, 1, -1, -2]
var startX = 0
var startY = 0
var preX = 0
var preY = 0
for i in 0..<36{
    let read = readLine()!.map{String($0)}
    let x = Int(exactly: Character(read[0]).asciiValue!)! - 65
    let y = Int(read[1])! - 1
    if i == 0{
        startX = x
        startY = y
    }
    if visited[x][y]{
        break
    }
    visited[x][y] = true
    var isEnded = false
    for k in 0..<dx.count{
        let aX = preX + dx[k]
        let aY = preY + dy[k]
        if aX == x && aY == y{
            isEnded = true
        }
    }
    if i != 0 && !isEnded{
        break
    }
    if i == 35{
        for k in 0..<dx.count{
            let aX = x + dx[k]
            let aY = y + dy[k]
            if aX == startX && aY == startY{
                print("Valid")
                exit(0)
            }
        }
    }
    preX = x
    preY = y
}
print("Invalid")
