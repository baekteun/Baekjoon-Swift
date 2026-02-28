//
//  main.swift
//  B_24416
//
//  Created by baegteun on 2/28/26.
//

import Foundation

let n = Int(readLine()!)!


var fArray: [Int] = Array(repeating: 0, count: n + 1)
fArray[1] = 1
fArray[2] = 1

func fillFibonachi(n: Int) -> Int {
  for i in 3...n {
    fArray[i] = fArray[i - 1] + fArray[i - 2]
  }
  return fArray[n]
}

_ = fillFibonachi(n: n)

let dpResult: Int = max(1, n - 2)

let recurringResult = fArray[n]
print("\(recurringResult) \(dpResult)")

/*
 피보나치 수 재귀호출 의사 코드는 다음과 같다.

 fib(n) {
     if (n = 1 or n = 2)
     then return 1;  # 코드1
     else return (fib(n - 1) + fib(n - 2));
 }

 7
 6 5
 2 1 2 2 1 2 1 2 . 2 1 2 2 1
 13

 6
 5 + 4
 4 3 3 2
 3 2 2 1 2 1 2
 2 1 2 2 1 2 1 2
 8

 5
 4 3
 3 2 2 1
 2 1 2 2 1
 5

 (n )

 피보나치 수 동적 프로그래밍 의사 코드는 다음과 같다.

 fibonacci(n) {
     f[1] <- f[2] <- 1;
     for i <- 3 to n
         f[i] <- f[i - 1] + f[i - 2];  # 코드2
     return f[n];
 }
 
 (n - 2?)


 예제 입력 1
 5
 예제 출력 1
 5 3

 예제 입력 2
 30
 예제 출력 2
 832040 28

 */
