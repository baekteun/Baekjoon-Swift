import Foundation

let tc = Int(readLine()!)!
var res = [String]()
for _ in 0..<tc {
    let p = Int(readLine()!)!
    var add = ""
    var max = -99999
    for _ in 0..<p {
        let input = readLine()!.components(separatedBy: " ")
        if max < Int(input[0])! {
            max = Int(input[0])!
            add = input[1]
        }
    }
    res.append(add)
}
print(res.joined(separator: "\n"))
