//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/08.
//

while let read = readLine()?.split(separator: " ").map{Int(String($0))!} {
    var res = 0
    var coupon = read[0]
    var stamp = 0
    while coupon != 0{
        res += coupon
        stamp += coupon
        coupon = 0
        coupon += stamp/read[1]
        stamp %= read[1]
    }
    print(res)
    
}
