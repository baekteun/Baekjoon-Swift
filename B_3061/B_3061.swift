//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/01.
//

let t = Int(readLine()!)!

for _ in 0..<t{
    let n = Int(readLine()!)!
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    input.insert(0, at: 0)
    var res = 0
    var index = 0
    for i in 1...n{
        (1...n).forEach{ if i == input[$0] { index = $0 } }
        while input[i] != i{
            input.swapAt(index, index-1)
            index -= 1
            res += 1
        }
        
    }
    print(res)
}
