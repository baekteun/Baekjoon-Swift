//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/15.
//

let input = readLine()!.map { String($0) }
print(input.enumerated().reduce("", { partialResult, element in
    if (element.offset+1) % 10 == 0{
        return partialResult + element.element + "\n"
    }else { return partialResult + element.element }
}))

