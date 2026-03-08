//
//  main.swift
//  B_2745
//
//  Created by baegteun on 3/8/26.
//

import Foundation

let input = readLine()!
  .split(separator: " ")

let (n, b) = (input[0], Int(input[1])!)
let value = Int(n, radix: b)

print(value!)
