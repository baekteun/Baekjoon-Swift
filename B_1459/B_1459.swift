import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
let x = input[0]
let y = input[1]
let w = input[2]
let s = input[3]

var time = 0

if 2*w < s {
    time += (x+y)*w
} else if 2*w > 2*s {
    if (x+y)%2 == 0 {
        time += max(x, y) * s
    } else {
        time += (max(x, y) - 1) * s
        time += w
    }
} else {
    if x == y {
        time += x * s
    } else {
        time += min(x, y) * s
        time += abs(x-y) * w
    }
}

print(time)