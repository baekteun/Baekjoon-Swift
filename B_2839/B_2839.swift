//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
var n = Int(readLine()!)!
var res: Int = 0
while(n>0){
    if(n%5==0){
        res += 1
        n -= 5
    }
    else if(n%3==0){
        res += 1
        n -= 3
    }
    else if(n>5){
        res += 1
        n -= 5
    }
    else {
        res = -1
        break
    }
}
print(res)
