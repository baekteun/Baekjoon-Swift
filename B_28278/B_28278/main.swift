//
//  main.swift
//  B_28278
//
//  Created by baegteun on 3/28/26.
//

import Foundation

let n = Int(readLine()!)!

var array: [Int] = []
for _ in 1...n {
    let input = readLine()!
        .split(separator: " ")

    let a = input[0]

    switch a {
    case "1":
        let x = Int(input[1])!
        array.append(x)

    case "2":
        if array.isEmpty {
            print(-1)
        } else {
            let last = array.removeLast()
            print(last)
        }

    case "3":
        print(array.count)

    case "4":
        print(array.isEmpty ? 1 : 0)

    case "5":
        if let last = array.last {
            print(last)
        } else {
            print(-1)
        }

    default:
        break
    }
}
