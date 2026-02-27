//
//  main.swift
//  B_25304
//
//  Created by baegteun on 2/27/26.
//

import Foundation

let totalPrice: Int = Int(readLine()!)!
let itemCount: Int = Int(readLine()!)!

var sumPrice = 0

for _ in 1...itemCount {
  let items = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
  sumPrice += items[0] * items[1]
}

print(totalPrice == sumPrice ? "Yes" : "No")
