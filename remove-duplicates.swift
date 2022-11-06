/*

# Legend
Дан упорядоченный по неубыванию массив целых 32-разрядных чисел. Требуется удалить из него все повторения.

Желательно получить решение, которое не считывает входной файл целиком в память, т.е., использует лишь константный объем памяти в процессе работы.

# Input format
Первая строка входного файла содержит единственное число n, n ≤ 1000000.

На следующих n строк расположены числа — элементы массива, по одному на строку. Числа отсортированы по неубыванию.

# Output format
Выходной файл должен содержать следующие в порядке возрастания уникальные элементы входного массива.

*/

import Foundation

let arrayLength = Int(readLine()!) ?? 0

var numbers: [Int] = []
var lastAdded: Int?

for _ in 0..<arrayLength {
    
    let newNumber = Int(readLine()!)!
    if lastAdded != newNumber {
        numbers.append(newNumber)
        lastAdded = newNumber
    }
}

numbers.forEach { number in
    print(number)
}