while let input = readLine() {
    if let n = Int(input) {
        var num = 1
        var count = 1

        while num % n != 0 {
            num = (num * 10 + 1) % n
            count += 1
        }

        print(count)
    }
}
