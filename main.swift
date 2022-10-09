let unsortedStrings = [String]()
var strings:[String]=unsortedStrings
while let line = readLine() {
    strings.append(line)
}
var swaps : Int=0, passSwap : Int=0, swapTotal : Int=0, passes : Int=0
print("Pass: 0, Swaps: 0/0, Array: \(strings)")

for i in 0..<strings.count - 1 {
    passes += 1
    swaps = 0
    var key = i
    passSwap=0
    for y in i + 1..<strings.count {
        if strings[y] < strings[key] {
            key = y
        }
    }
        strings.swapAt(i, key)
        swaps += 1
        swapTotal += 1
        print("Pass: \(passes), Swaps: \(swaps)/\(swapTotal), Array: \(strings)")       
}

