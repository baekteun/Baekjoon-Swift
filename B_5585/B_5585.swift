import Foundation

guard
    let read = readLine(),
    let input = Int(read)
else { exit(0) }

var rem = 1000 - input

var count = 0

while rem > 0 {
    if rem >= 500 {
        rem -= 500
    } else if rem >= 100 {
        rem -= 100
    } else if rem >= 50 {
        rem -= 50
    } else if rem >= 10 {
        rem -= 10
    } else if rem >= 5 {
        rem -= 5
    } else if rem >= 1 {
        rem -= 1
    }
    count += 1
}

print(count)
