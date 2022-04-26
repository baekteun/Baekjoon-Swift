//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/09.
//

import Foundation
let n = Int(readLine()!)!

print(n/5 + (n%5 != 0 ? 1 : 0))
