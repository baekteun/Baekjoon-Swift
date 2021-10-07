//
//  B_1193.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

let n = Int(readLine()!)!

var l = 0
var r = 0
var e = 0
while n>e{
    l+=1
    e += l
}
let diff = e - n
if(l%2==0){
    print("\(l-diff)/\(diff+1)")
}else{
    print("\(diff+1)/\(l-diff)")
}





