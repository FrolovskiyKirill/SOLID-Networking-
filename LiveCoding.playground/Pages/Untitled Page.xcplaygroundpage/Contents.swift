import UIKit

var greeting = "Hello, playground"

//№ 1. Проверка символов в строке на уникальност.

//Задание: написать функцию, которая принемает строку как свой единственный параметр и возвращает true если строка содержит только уникальные символы.


func sort(input: String) -> Bool {
    
    var checkedSymbols = [Character]()
    
    for symbol in input {
        if checkedSymbols.contains(symbol) {
            return false
        }
        checkedSymbols.append(symbol)
    }
    return true
}

sort(input: "He, world")

func sort2(input: String) -> Bool {
    Set(input).count == input.count
}

sort2(input: "Hell, world")
