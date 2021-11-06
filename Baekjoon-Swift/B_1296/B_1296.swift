//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/06.
//



var name = ""
var percent = 0

let yeon = readLine()!
let t = Int(readLine()!)!

for _ in 0..<t{
    let teamName = readLine()!
    let dict = counter((yeon+teamName))
    let L = dict["L"]!
    let O = dict["O"]!
    let V = dict["V"]!
    let E = dict["E"]!
    let per = calc(L,O,V,E)
    if per > percent{
        percent = per
        name = teamName
    }
    else if per == percent{
        if per==0 && name.isEmpty{
            name = teamName
            percent = per
        }
        if name > teamName{
            name = teamName
        }
    }
    
}
print(name)


func counter(_ str: String) -> [String : Int]{
    let arr = Array(str)
    var dict: [String:Int] = [:]
    dict["L"] = arr.filter{String($0) == "L"}.count
    dict["O"] = arr.filter{String($0) == "O"}.count
    dict["V"] = arr.filter{String($0) == "V"}.count
    dict["E"] = arr.filter{String($0) == "E"}.count
    return dict
}

func calc(_ L: Int, _ O: Int, _ V: Int, _ E: Int) -> Int{
    return ((L+O) * (L+V) * (L+E) * (O+V) * (O+E) * (V+E))%100
}
