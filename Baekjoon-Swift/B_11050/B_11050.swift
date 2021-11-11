//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/11.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
print(fac(input[0]) / (fac(input[0]-input[1]) * fac(input[1])))

func fac(_ x: Int) -> Int{
    if x <= 1{
        return 1
    }
    
    return x * fac(x-1)
}
