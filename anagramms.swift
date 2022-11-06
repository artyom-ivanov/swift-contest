/*
Даны две строки, состоящие из строчных латинских букв. Требуется определить, являются ли эти строки анаграммами, т. е. отличаются ли они только порядком следования символов.

Формат ввода
Входной файл содержит две строки строчных латинских символов, каждая не длиннее 100 000 символов. Строки разделяются символом перевода строки.

Формат вывода
Выходной файл должен содержать единицу, если строки являются анаграммами, и ноль в противном случае.
*/

import Foundation

let firstString = readLine()!
let secondString = readLine()!

func compareStrings(_ first: String, _ second: String) -> Bool {
    if first.count != second.count {
        return false
    }
    if first.sorted() == second.sorted() {
        return true;
    }
    
    return false
}

print(compareStrings(firstString, secondString) ? "1" : "0")