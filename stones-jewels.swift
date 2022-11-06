// Даны две строки строчных латинских символов: строка J и строка S. Символы, входящие в строку J, — «драгоценности», входящие в строку S — «камни». Нужно определить, какое количество символов из S одновременно являются «драгоценностями». Проще говоря, нужно проверить, какое количество символов из S входит в J.

import Foundation
 
let jewels = readLine()
let stones = readLine()
 
var result = 0
for stone in stones! {
    if jewels!.contains(stone) {
        result += 1
    }
}
 
print(result)