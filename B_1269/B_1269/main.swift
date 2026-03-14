//
//  main.swift
//  B_1269
//
//  Created by baegteun on 3/14/26.
//

import Foundation

let _ = readLine()!

let set1 = Set(readLine()!
  .split(separator: " ")
  .map { Int($0)! })

let set2 = Set(readLine()!
  .split(separator: " ")
  .map { Int($0)! })

print(set1.subtracting(set2).count + set2.subtracting(set1).count)
