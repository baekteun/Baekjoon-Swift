//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/03.
//

let input = readLine()!.split(separator: " ").map{ Int(String($0))}
if input[1] == 1 || input[1] == 2{
    print("NEWBIE")
}else if input[1]! <= input[0]!{
    print("OLDBIE")
}else{
    print("TLE")
}
