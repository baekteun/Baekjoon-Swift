//
//  main.swift
//  B_10810
//
//  Created by baegteun on 2/27/26.
//

import Foundation

let line1 = readLine()!.split(separator: " ")
let (n, m) = (Int(line1[0])!, Int(line1[1])!)
var dictionary = Dictionary<Int, Int>(minimumCapacity: n)

for _ in 1...m {
  let line2 = readLine()!.split(separator: " ")
  let (i, j, k) = (Int(line2[0])!, Int(line2[1])!, Int(line2[2])!)
  for index in i...j {
    dictionary[index - 1] = k
  }
}

print((0..<n).map { String(dictionary[$0, default: 0]) }.joined(separator: " "))
