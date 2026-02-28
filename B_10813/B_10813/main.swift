//
//  main.swift
//  B_10813
//
//  Created by baegteun on 2/28/26.
//

import Foundation

let line1 = readLine()!
  .split(separator: " ")
  
let (n, m) = (Int(line1[0])!, Int(line1[1])!)

var dictionary = (1...n).reduce(into: [Int: Int]()) {
  $0[$1] = $1
}


for _ in 1...m {
  let line2 = readLine()!
    .split(separator: " ")
  let (i, j) = (Int(line2[0])!, Int(line2[1])!)

  let prevValue = dictionary[i]
  let changingValue = dictionary[j]

  dictionary[j] = prevValue
  dictionary[i] = changingValue
}

print(dictionary.sorted(by: { lhs, rhs in
  lhs.key < rhs.key
}).map { String($0.value) }.joined(separator: " "))

