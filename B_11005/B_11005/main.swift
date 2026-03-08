//
//  main.swift
//  B_11005
//
//  Created by baegteun on 3/8/26.
//

import Foundation

let input = readLine()!
  .split(separator: " ")

let (n, b) = (Int(input[0])!, Int(input[1])!)
print(String(n, radix: b, uppercase: true))
