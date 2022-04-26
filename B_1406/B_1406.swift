//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/12/06.
//

var L = Array(readLine()!)
var R = [Character]()
for _ in 0..<Int(readLine()!)!{
    let edit = readLine()!
    if edit == "L" && !L.isEmpty { R.append(L.removeLast()) }
    else if edit == "D" && !R.isEmpty { L.append(R.removeLast()) }
    else if edit == "B" && !L.isEmpty { L.removeLast() }
    else if edit.first! == "P" { L.append(edit.last!) }
}
print(String(L+R.reversed()))
