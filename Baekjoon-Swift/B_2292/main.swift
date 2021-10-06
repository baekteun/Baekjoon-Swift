//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

let n = Int(readLine()!)!
if(n==1){
    print(1)
}else{
    var s = 2
    var count = 0
    while(n>=s){
        s += 6*count
        count+=1
    }
    print(count)
}
    

