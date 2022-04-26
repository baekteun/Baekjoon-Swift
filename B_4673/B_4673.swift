//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/26.
//


var d = Array(repeating: 0, count: 10036)
for i in 1...10000{
    d[dn(i)] = 1
    if d[i] != 1{
        print(i)
    }
}

func dn(_ i: Int) -> Int{
    var x: Int = i
    var res: Int = x
    if x>=10000{
        res += x / 10000
        x %= 10000
    }
    if x>=1000{
        res += x/1000
        x %= 1000
    }
    if x>=100{
        res += x/100
        x %= 100
    }
    if x>=10{
        res += x/10
        x %= 10
    }
    res += x
    return res
}
