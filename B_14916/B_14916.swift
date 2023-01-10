import Foundation

/*
 5로 나눈 값
 5로 나눠지면 바로 ㄱㄱ 아니면 2
 0보다 크면 -1
 */

var n = Int(readLine()!)!

var count = 0

while n > 0 {
    if n % 5 == 0 {
        print(n / 5 + count)
        exit(0)
    }
    count += 1
    n -= 2
}

if n != 0 {
    print(-1)
} else {
    print(count)
}
