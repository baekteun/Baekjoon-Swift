//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/29.
//


var input = readLine()!
var count = 0
while input.count >= 2{
    count += 1
    input = String(input.map{Int(String($0))!}.reduce(0, +))
}
print(count)
if input=="3" || input=="6" || input=="9"{
    print("YES")
}else{
    print("NO")
}
