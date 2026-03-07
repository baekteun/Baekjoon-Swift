//
//  main.swift
//  B_2563
//
//  Created by baegteun on 3/7/26.
//

import Foundation

let n = Int(readLine()!)!

var paper = Array(
  repeating: Array(
    repeating: 0,
    count: 100
  ),
  count: 100
)

for _ in 0..<n {
  let line2 = readLine()!
    .split(separator: " ")

  let position = (Int(line2[0])!, Int(line2[1])!)
  for row in position.0...position.0 + 9 {
    paper[row].replaceSubrange(position.1...position.1 + 9, with: Array(repeating: 1, count: 10))
  }
}

print(paper.flatMap { $0 }.filter({ $0 == 1 }).count)
