//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/14.
//


let arr = Array(arrayLiteral: "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
let one = readLine()!
let two = readLine()!
var three = "\(arr.firstIndex(of: one)!)\(arr.firstIndex(of: two)!)"
let input = readLine()!
for i in 0..<Int(exactly: arr.firstIndex(of: input)!)!{
    three += "0"
}
print(UInt64(three)!)
