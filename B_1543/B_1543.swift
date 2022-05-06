import Foundation

var doc = readLine()!
let word = readLine()!

var count = 0
while let range = doc.range(of: word)?.upperBound {
    count += 1
    doc = String(doc[range...])
}

print(count)
