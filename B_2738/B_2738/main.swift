//
//  main.swift
//  B_2738
//
//  Created by baegteun on 3/7/26.
//

import Foundation

let line1 = readLine()!
  .split(separator: " ")

let (n, m) = (Int(line1[0])!, Int(line1[1])!)

var array: [[Int]] = (0..<n).map { row in
  (0..<m).map { column in
    0
  }
}

for _ in 1...2 {
  for row in 0..<n {
    let rowValues = readLine()!
      .split(separator: " ")

    for column in 0..<m {
      array[row][column] += Int(rowValues[column])!
    }
  }
}

print(array.map { $0.map { String($0) }.joined(separator: " ") }.joined(separator: "\n"))
