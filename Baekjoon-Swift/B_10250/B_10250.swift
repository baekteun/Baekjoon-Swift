//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

let t = Int(readLine()!)!
var res = ""
for _ in 0..<t{
    
    let str = readLine()!.split(separator: " ").map {Int($0)!}
    let h = str[0]
    let w = str[1]
    let n = str[2]
    var count = 0
    for k in 0..<w{
        for i in 0..<h{
            count+=1
            if count == n{
                res += "\(i+1)"
                if k<9{
                    res+="0"
                    res+="\(k+1)"
                }else{
                    res+="\(k+1)"
                }
                res+="\n"
            }
            
        }
    }
    
}
print(res)
