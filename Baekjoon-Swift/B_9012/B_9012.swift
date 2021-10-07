//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation
let n = Int(readLine()!)!
var res = ""
for _ in 0..<n{
    vps(s: readLine()!)
}
print(res)
func vps(s: String){
    var count = 0
    for i in s{
        if i == "("{
            count += 1
        }else if count == 0 && i==")"{
            res += "NO\n"
            return
        }else{
            count -= 1
        }
    }
    if(count==0){
        res+="YES"
    }else{
        res+="NO"
    }
    res += "\n"
}

