//
//  main.swift
//  B_9506
//
//  Created by baegteun on 3/14/26.
//

import Foundation

while true {
  let n = Int(readLine()!)!
  guard n != -1 else { break }

  var adding = 0
  let array = (1..<n).filter {
    let isFactor = n % $0 == 0
    if isFactor {
      adding += $0
    }
    return isFactor
  }

  if adding == n {
    print("\(n) = \(array.map { String($0) }.joined(separator: " + "))")
  } else {
    print("\(n) is NOT perfect.")
  }
}
