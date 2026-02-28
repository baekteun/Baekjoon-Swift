//
//  main.swift
//  B_5597
//
//  Created by baegteun on 2/28/26.
//

import Foundation

var dictionary = Dictionary<Int, Int>(
  uniqueKeysWithValues: Array(repeating: 0, count: 30).enumerated().map { ($0 + 1, $1) }
)

for _ in 1...28 {
  let input = Int(readLine()!)!
  dictionary.removeValue(forKey: input)
}

print(dictionary.keys.sorted().map { String($0) }.joined(separator: " "))
