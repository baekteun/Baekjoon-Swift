//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/07.
//

import Foundation

let n = Int(readLine()!)!
var heap = PriorityQueue<Int>(){
    return $0 <= $1
}


for _ in 0..<n {
    let x = Int(readLine()!)!
    guard x != 0 else {
        print(heap.pop() ?? 0)
        continue
    }
    heap.push(x)
}


class PriorityQueue<T> {
    private var heap: [T] = []
    private let comparing: (_ o1: T,_ o2: T) -> Bool
    init(_ comparing: @escaping (_ o1: T,_ o2: T) -> Bool) {
        self.comparing = comparing
        
    }
    func size() -> Int {
        heap.count
        
    }
    func isEmpty() -> Bool {
        heap.isEmpty
        
    }
    func clear() {
        heap.removeAll()
        
    }
    func peek() -> T? {
        heap.first
        
    }
    func push(_ value: T) {
        heap.append(value)
        if heap.count == 1 {
            return
            
        }
        var valueIndex = heap.count - 1
        var parentIndex = (valueIndex-1) / 2
        while !comparing(heap[parentIndex], heap[valueIndex]) {
            heap.swapAt(valueIndex, parentIndex)
            valueIndex = parentIndex
            parentIndex = (valueIndex-1) / 2
            if valueIndex == 0 {
                break
                
            }
            
        }
        
    }
    func pop() -> T? {
        if heap.count == 0 {
            return nil
            
        }
        if heap.count == 1 {
            return heap.removeFirst()
            
        }
        func isChildEmpty(_ value: Int,_ left: Int,_ right: Int) -> Bool {
            if heap.count <= left {
                return true
                
            }
            if heap.count > right {
                return false
                
            }
            if comparing(heap[value], heap[left]) {
                return true
                
            }
            heap.swapAt(value, left)
            return true
            
        }
        heap.swapAt(0, heap.count-1)
        let answer = heap.removeLast()
        var valueIndex = 0
        var leftIndex = valueIndex * 2 + 1
        var rightIndex = valueIndex * 2 + 2
        if isChildEmpty(valueIndex, leftIndex, rightIndex) {
            return answer
            
        }
        
        while !comparing(heap[valueIndex], heap[leftIndex]) || !comparing(heap[valueIndex], heap[rightIndex]) {
            let index = comparing(heap[leftIndex], heap[rightIndex]) ? leftIndex : rightIndex
            heap.swapAt(valueIndex, index)
            valueIndex = index
            leftIndex = valueIndex * 2 + 1
            rightIndex = valueIndex * 2 + 2
            if isChildEmpty(valueIndex, leftIndex, rightIndex) {
                break
                
            }
            
        }
        return answer
        
    }
    
}


