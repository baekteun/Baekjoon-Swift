import Foundation

/*
 P일중 L일만 사용 ㄱㄴ, V일 휴가날임
 입력 L, P, V
 1 < L < P < V
 
 5 8 20 -> 14
 20에 8을 나눠서 2 * 5 -> 10
 20에 8 나머지 4 -> 4
 14?
 */

var caseCount = 0
while true {
    let input = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    let l = input[0]
    let p = input[1]
    let v = input[2]
    guard l != 0, p != 0, v != 0 else { break }
    caseCount += 1
    let divide = Int(floor(Double(v) / Double(p))) * l
    let remain = min(Int(floor(Double(v).truncatingRemainder(dividingBy: Double(p)))), l)
    print("Case \(caseCount): \(remain + divide)")
}

