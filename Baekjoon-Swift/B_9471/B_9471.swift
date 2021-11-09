//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/09.
//

let t = Int(readLine()!)!
for _ in 0..<t{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let t = input[0]
    let m = input[1]
    var m1 = 0
    var m2 = 1
    var count = 0
    while(true){
        if m1 == 0, m2 == 0, count != 0{
            break
        }
        let temp = m1
        m1 = m2
        m2 = (temp+m1) % m
        count += 1
    }
    print(t, count)
}
