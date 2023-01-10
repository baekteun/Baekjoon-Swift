import Foundation

/*
 0.25 / 0.1 / 0.05 / 0.01
 
 입력 cent 1$ = 100cent
 입력/쿼터(25) + -
 입력/다임(10) + -
 입력/니켈(5) + -
 입력/페니(1)
 */

let t: Int = Int(readLine()!)!

for _ in 0..<t {
    var c: Int = Int(readLine()!)!
    let querter: Int = Int(floor(Double(c) / 25))
    c -= querter * 25
    let dime: Int = Int(floor(Double(c) / 10))
    c -= dime * 10
    let nickel: Int = Int(floor(Double(c) / 5))
    c -= nickel * 5
    let penni: Int = Int(floor(Double(c) / 1))
    c -= penni
    print(querter, dime, nickel, penni)
}
