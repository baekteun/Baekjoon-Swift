import Foundation

let n = Int(readLine()!)!

var ln = ""
var ld = ""
var un = ""
var ud = ""

for _ in 0..<n {
    let read = readLine()!.components(separatedBy: " ")
    var date = "\(read[3])"
    date += Int(read[2])! >= 10 ? "\(read[2])" : "0\(read[2])"
    date += Int(read[1])! >= 10 ? "\(read[1])" : "0\(read[1])"
    if ld > date || ld.isEmpty {
        ld = date
        ln = read[0]
    }
    
    if ud < date || ud.isEmpty {
        ud = date
        un = read[0]
    }
}

print(un)
print(ln)
