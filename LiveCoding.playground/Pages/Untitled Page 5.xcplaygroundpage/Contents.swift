//№ 5. Сколько раз символ встречается в строке?

//Задание: написать функцию, которая принемает строку и символ, а далее возвращает количество раз, которое данный символ встречается в строке, с учетом регистра.

func howManyTimes(input: String, count: Character) -> Int {
    
    var letterCount = 0
    
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}

howManyTimes(input: "Сколько раз символ встречается в строке?", count: "о")

func howManyTimes2(input: String, count: Character) -> Int  {
    input.reduce(0) {$1 == count ? $0 + 1 : $0}
}

howManyTimes2(input: "Сколько раз символ встречается в строке?", count: "о")
