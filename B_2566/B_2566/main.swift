//
//  main.swift
//  B_2566
//
//  Created by baegteun on 3/7/26.
//

import Foundation

var maxValue = -1
var maxPosition = (0, 0)

for row in 0..<9 {
  let input = readLine()!
    .split(separator: " ")

  for (column, value) in input.enumerated() {
    let intValue = Int(value)!
    if intValue > maxValue {
      maxValue = intValue
      maxPosition = (row, column)
    }
  }
}

print(maxValue)
print(maxPosition.0 + 1, maxPosition.1 + 1)
