//
//  main.swift
//  B_10798
//
//  Created by baegteun on 3/7/26.
//

import Foundation

var array: [String] = Array(
  repeating: "",
  count: 15
)

for _ in 0..<5 {
  let input = readLine()!
  for (index, string) in input.enumerated() {
    array[index].append(String(string))
  }
}

print(array.joined())
