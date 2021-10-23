//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/23.
//


var res = Array(repeating: Array(repeating: 0, count: 31), count: 31)
let t = Int(readLine()!)!
for _ in 0..<t{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    print(river(input[1], input[0]))
}


func river(_ x: Int, _ y: Int) -> Int{
    if x == y || y == 0{
        return 1
    }
    if res[x][y] != 0{
        return res[x][y]
    }
    res[x][y] = river(x-1, y-1) + river(x-1, y)
    return res[x][y]
}
