//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/05.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}

var arr = Array(repeating: [String](), count: input[0])
var row = 0
var col = 0
for i in 0..<input[0]{
    let read = readLine()!
    arr[i] = read.map{String($0)}
    if !read.contains("X"){
        row += 1
    }
}

for i in 0..<input[1]{
    var count = 0
    for k in 0..<input[0]{
        if arr[k][i] == "X"{
            count += 1
            continue
        }
    }
    if count == 0{ col += 1}
}
print(max(row, col))
