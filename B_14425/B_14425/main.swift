//
//  main.swift
//  B_14425
//
//  Created by baegteun on 3/14/26.
//

import Foundation

let line1 = readLine()!
  .split(separator: " ")

let (n, m) = (Int(line1[0])!, Int(line1[1])!)

let set = (1...n).reduce(into: Set<String>()) { partialResult, _ in
  let input = readLine()!
  partialResult.insert(input)
}

var count = 0
for _ in 1...m {
  let query = readLine()!
  if set.contains(query) {
    count += 1
  }
}

print(count)
