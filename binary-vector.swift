/*
Требуется найти в бинарном векторе самую длинную последовательность единиц и вывести её длину.

Желательно получить решение, работающее за линейное время и при этом проходящее по входному массиву только один раз.

# Формат ввода
Первая строка входного файла содержит одно число n, n ≤ 10000. Каждая из следующих n строк содержит ровно одно число — очередной элемент массива.

# Формат вывода
Выходной файл должен содержать единственное число — длину самой длинной последовательности единиц во входном массиве.
*/

let arrayLength = Int(readLine()!) ?? 0

var distance: Int = 0
var longestDistance: Int = 0

for _ in 0..<arrayLength {
    let newNumber = Int(readLine()!)!
    
    if newNumber == 1 {
        distance += 1
    } else {
        if longestDistance < distance {
            longestDistance = distance
        }
        distance = 0
    }
}

if longestDistance < distance {
    longestDistance = distance
}

print(longestDistance)