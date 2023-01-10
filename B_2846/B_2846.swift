import Foundation

/*
 5 || 6
 바꾸면서 최대, 최소
 그냥 replace때려서 더하면 되는거 아님?
 */

let input = readLine()!.components(separatedBy: " ")
let a = input[0]
let b = input[1]

let min = [a, b].map { $0.replacingOccurrences(of: "6", with: "5") }.compactMap { Int($0) }.reduce(0, +)
let max = [a, b].map { $0.replacingOccurrences(of: "5", with: "6") }.compactMap { Int($0) }.reduce(0, +)
print(min, max)
