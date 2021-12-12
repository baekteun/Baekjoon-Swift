//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/12.
//

_ = readLine()
let size = readLine()!.split(separator: " ").map{Int(String($0))!}
let cluster = Int(readLine()!)!
var count = 0
for i in size{
    if i % cluster == 0{
        count += i / cluster
    }else{
        count += i / cluster + 1
    }
}
print(count * cluster)
