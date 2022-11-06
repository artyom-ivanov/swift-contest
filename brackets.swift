/*
Дано целое число n. Требуется вывести все правильные скобочные последовательности длины 2 ⋅ n, упорядоченные лексикографически (см. https://ru.wikipedia.org/wiki/Лексикографический_порядок).

В задаче используются только круглые скобки.

Желательно получить решение, которое работает за время, пропорциональное общему количеству правильных скобочных последовательностей в ответе, и при этом использует объём памяти, пропорциональный n.

# Формат ввода
Единственная строка входного файла содержит целое число n, 0 ≤ n ≤ 11

# Формат вывода
Выходной файл содержит сгенерированные правильные скобочные последовательности, упорядоченные лексикографически.
*/

import Foundation

let inputNumber = Int(readLine()!)! * 2

var maxNumber: Int = 0
for number in 0..<inputNumber {
    maxNumber += Int(pow(2, Double(number)))
}

for number in 0...maxNumber {
    let binaryString = String(
        String(
            String(number, radix: 2).reversed()
        )
        .padding(toLength: inputNumber, withPad: "0", startingAt: 0)
        .reversed()
    )
    
    let bracketString = binaryString
        .replacingOccurrences(of: "0", with: "(")
        .replacingOccurrences(of: "1", with: ")")
    
    if checkBrackets(bracketString) {
        print(bracketString)
    }
}

func checkBrackets(_ input: String) -> Bool {
    
    var openedBrackets: Int = 0
    
    for symbol in input {
        if symbol == "(" {
            openedBrackets += 1
        }
        if symbol == ")" {
            openedBrackets -= 1
        }
        if openedBrackets < 0 {
            return false
        }
    }
    if openedBrackets > 0 {
        return false
    }
    return true
}

