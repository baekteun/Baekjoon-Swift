//
//  main.swift
//  B_10807
//
//  Created by baegteun on 2/27/26.
//

import Foundation

let count = Int(readLine()!)!
let numbers = readLine()!
    .split(separator: " ")
let finding = readLine()!

print(numbers.count(where: { $0 == finding }))
