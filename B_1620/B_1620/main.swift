//
//  main.swift
//  B_1620
//
//  Created by baegteun on 3/14/26.
//

import Foundation

let input = readLine()!
    .split(separator: " ")

let (n, m) = (Int(input[0])!, Int(input[1])!)

var indexToName: [Int: String] = [:]
var nameToIndex: [String: Int] = [:]

for i in 0..<n {
  let name = readLine()!
  indexToName[i] = name
  nameToIndex[name] = i
}

var result: [String] = []

for _ in 0..<m {
  let query = readLine()!
  
  if let int = Int(query) {
    print(indexToName[int - 1]!)
  } else {
    print(nameToIndex[query]! + 1)
  }
}
