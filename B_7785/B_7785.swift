//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/05.
//

let t = Int(readLine()!)!
var dict = [String:Bool]()
for _ in 0..<t{
    let input = readLine()!.split(separator: " ").map{String($0)}
    let bool = input[1] == "enter" ? false : true
    dict[input[0]] = bool
}
_ = dict.filter{!$0.value}.sorted{$0.key > $1.key}.map{print($0.key)}
