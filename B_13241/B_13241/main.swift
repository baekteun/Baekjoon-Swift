//
//  main.swift
//  B_13241
//
//  Created by baegteun on 3/21/26.
//

import Foundation

let input = readLine()!
    .split(separator: " ")

let (a, b) = (Int64(input[0])!, Int64(input[1])!)

func gcd(a: Int64, b: Int64) -> Int64 {
    b == 0 ? a :gcd(a: b, b: a % b)
}

let gcdResult = gcd(a: a, b: b)
let lcm = (a * b) / gcdResult

print(lcm)

