
/*
 Создать enum с временами года.
 Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum
 с временем года этого месяца.
 */

enum timeOfYear {
    case winter
    case spring
    case summer
    case autumn
}

func season(month: Int) -> timeOfYear? {
    switch month {
    case 1, 2, 12:
        return.winter
    case 3...5:
        return.spring
    case 6...8:
        return.summer
    case 9...11:
        return.autumn
    default:
        return nil
    }
}

if let month = season(month: 4) {
    print("\(month)")
} else {
    print("Invalid month number")
}
