//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/19.
//

import Foundation

let input = Int(readLine()!)!
if (input%4 == 0 && input%100 != 0) || input%400 == 0{
    print("1")
}else{
    print("0")
}
