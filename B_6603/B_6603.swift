//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
var res = ""
var n: [Int]!
var N: Int!
var arr: [Int]!
var resArr: [Int]!
while(N != 0){
    n = readLine()!.split(separator: " ").map{ Int($0)!}
    N = n.removeFirst()
    arr = [Int](repeating: 0, count: N)
    resArr = [Int](repeating: 0, count: N)
    for i in 0 ..< N{
        arr[i] = n[i]
    }
    
    DFS(start: 0,depth: 0)
    res += "\n"
    
    
}
print(res)
func DFS(start: Int, depth: Int){
    guard let arr = arr else { return }
    
    if(depth==6){
        for i in 0..<6{
            res += "\(resArr[i]) "
        }
        res += "\n"
        return
    }
    for i in start..<N{
        resArr[depth] = arr[i]
        DFS(start: i+1, depth: depth+1)
        
    }
}
