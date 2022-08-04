import Foundation

let read = readLine()!.map { String($0) }
var res = 0
var recent = ""
for i in read.indices {
      if recent == read[i] {
        res += 5
    } else {
        res += 10
        recent = read[i ]
    }
}

print(res)

