//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/09.
//



var arr = Array(repeating: 0, count: 91)
arr[1] = 1
arr[2] = 1
guard let x = Int(readLine()!) else { fatalError() }
print(fibo(x))


func fibo(_ x: Int) -> Int{
    if x < 3 {
        return 1
    }
    else if arr[x] != 0 {
        return arr[x]
    }
    arr[x] = fibo(x-1) + fibo(x-2)
    return arr[x]
}


