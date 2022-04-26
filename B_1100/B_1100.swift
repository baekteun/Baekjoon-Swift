//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/12.
//

import Foundation

var count = 0
var res = 0

for k in 1...8{
    let input = readLine()!
    for i in input{
        count += 1
        if k%2 != 0{
            if count%2 != 0, i == "F"{
                res += 1
            }
        }else{
            if count%2 == 0, i == "F"{
                res += 1
            }
        }
    }
}
print(res)
