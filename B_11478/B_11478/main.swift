//
//  main.swift
//  B_11478
//
//  Created by baegteun on 3/15/26.
//

import Foundation

let s = readLine()!

var inserted: Set<String> = []
inserted.reserveCapacity(s.count * (s.count + 1) / 2)

let utf8 = Array(s.utf8)

for length in 1...utf8.count {
  for start in 0...(utf8.count - length) {
    let bytes = utf8[start..<start + length]
    if let str = String(bytes: bytes, encoding: .utf8) {
      inserted.insert(str)
    }
  }
}

print(inserted.count)
