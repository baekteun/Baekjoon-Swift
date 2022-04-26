//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/10.
//

var N = Int(readLine()!)!
let F = Int(readLine()!)!

N /= 100
N *= 100

while N%F != 0 {
    N += 1
}
N %= 100

if N < 10{
    print("0\(N)")
}else{
    print(N)
}
