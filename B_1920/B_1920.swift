//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/22.
//

readLine()
var arr: [Int] = []
readLine()!.split(separator: " ").map{arr.append(Int($0)!)}
arr.sort()
readLine()
readLine()!.split(separator: " ").map{print(search(Int($0)!))}

func search(_ item: Int) -> Int{
    var left = 0
    var right = arr.count-1
    while left <= right{
        let mid = (left + right)/2
        if arr[mid] == item{return 1}
        else if arr[mid] > item{right = mid - 1}
        else if arr[mid] < item{left = mid + 1}
    }
    return 0
}
