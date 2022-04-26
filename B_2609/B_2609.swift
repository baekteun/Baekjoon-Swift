//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/11.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}

let gcd = GCD(input[0], input[1])
print(gcd)
print(input.reduce(1, *) / gcd)

func GCD(_ x: Int,_ y: Int) -> Int{
    return y != 0 ? GCD(y, x%y) : x
}
