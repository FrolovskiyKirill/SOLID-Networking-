//№ 6. Удаление повторяющихся символов из строки.

//Задание: написать функцию, которая принемает строку как единственный параметр и возвращает ту же самую строку только с удаленными повторяющимися символами.

func check(string: String) -> String {
    var used = [Character]()
    
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}

check(string: "Hello")
