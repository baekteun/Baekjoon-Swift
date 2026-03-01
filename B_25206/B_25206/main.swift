//
//  main.swift
//  B_25206
//
//  Created by baegteun on 3/1/26.
//

import Foundation

/*A+  4.5
 A0  4.0
 B+  3.5
 B0  3.0
 C+  2.5
 C0  2.0
 D+  1.5
 D0  1.0
 F  0.0
*/

let multiplier: [String: Double] = [
  "A+": 4.5,
  "A0": 4.0,
  "B+": 3.5,
  "B0": 3.0,
  "C+": 2.5,
  "C0": 2.0,
  "D+": 1.5,
  "D0": 1.0,
  "F": 0
]
var array: [(multiplied: Double, original: Double)] = []
array.reserveCapacity(20)

for _ in 1...20 {
  let input = readLine()!
    .split(separator: " ")

  let (_, score, `class`): (String, Double, String) = (String(input[0]), Double(input[1])!, String(input[2]))
  if `class`.localizedCompare("P") == .orderedSame { continue }

  array.append((score * multiplier[`class`, default: 0], score))
}

print(array.map(\.multiplied).reduce(0, +) / array.map(\.original).reduce(0, +))
