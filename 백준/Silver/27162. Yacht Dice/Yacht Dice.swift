import Foundation

func calculateHomework(_ dice: [Int], _ n: Int) -> Int {
    return (2 + dice.filter { $0 == n }.count) * n
}

func calculateFourOfAKind(_ dice: [Int]) -> Int {
    guard let maxCount = dice.map({ value in dice.filter({ $0 == value }).count }).max(), maxCount >= 2 else {
        return 0
    }
    return dice.first { value in dice.filter { $0 == value }.count >= 2 }! * 4
}

func calculateFullHouse(_ dice: [Int]) -> Int {
    if dice.count == 1 {
        return dice.reduce(0, +) == 6 ? 28 : 12 + dice.reduce(0, +) * 3
    } else if dice.count == 2 {
        return dice.max()! * 3 + dice.min()! * 2
    } else {
        return 0
    }
}

func calculateLittleStraight(_ dice: [Int]) -> Int {
    return (dice.count == 3 && !dice.contains(6)) ? 30 : 0
}

func calculateBigStraight(_ dice: [Int]) -> Int {
    return (dice.count == 3 && !dice.contains(1)) ? 30 : 0
}

func calculateYacht(_ dice: [Int]) -> Int {
    return (dice.count == 1) ? 50 : 0
}

func main() {
    let pedigree = Array(readLine()!).map{ String($0) }
    let dice = readLine()!.split(separator: " ").map { Int($0)! }
    let distinctDice = Array(Set(dice))
    var scores = [Int](repeating: 0, count: 12)

    for i in scores.indices {
        if pedigree[i] == "N" {
            continue
        }
        switch i {
        case 0:
            scores[i] = calculateHomework(dice, 1)
        case 1:
            scores[i] = calculateHomework(dice, 2)
        case 2:
            scores[i] = calculateHomework(dice, 3)
        case 3:
            scores[i] = calculateHomework(dice, 4)
        case 4:
            scores[i] = calculateHomework(dice, 5)
        case 5:
            scores[i] = calculateHomework(dice, 6)
        case 6:
            scores[i] = calculateFourOfAKind(dice)
        case 7:
            scores[i] = calculateFullHouse(distinctDice)
        case 8:
            scores[i] = calculateLittleStraight(distinctDice)
        case 9:
            scores[i] = calculateBigStraight(distinctDice)
        case 10:
            scores[i] = calculateYacht(distinctDice)
        default:
            scores[i] = dice.reduce(0, +) + 12
        }
    }
    print(scores.max()!)
}

main()
