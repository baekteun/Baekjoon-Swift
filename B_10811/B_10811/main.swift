//
//  main.swift
//  B_10811
//
//  Created by baegteun on 2/28/26.
//

import Foundation

let line1 = readLine()!
  .split(separator: " ")

let (n, m) = (Int(line1[0])!, Int(line1[1])!)

var array = Array(1...n)

for _ in 1...m {
  let line2 = readLine()!
    .split(separator: " ")

  let (i, j) = (Int(line2[0])!, Int(line2[1])!)

  let indexedI = i - 1
  let indexedJ = j - 1
  array[indexedI...indexedJ].reverse()
}

print(array.map { String($0) }.joined(separator: " "))
