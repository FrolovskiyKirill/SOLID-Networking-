//№ 3. Идентичны ли две строки между собой?

//Задание: написать функцию, которая принемает две строки и возвращает true если эти строки содержат одни и те же символы в любом порядке с учетом регистра.

func check(string1: String, string2: String) -> Bool {
    var checkString = string2
    for letter in string1 {
        if let index = checkString.firstIndex(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.count == 0
}

check(string1: "Идентичны ли две строки между собой?", string2: "Идентичны ли две строки между собой?")

func check2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

check2(string1: "Идентичны ли двесобой? строки между", string2: "Идентичны ли две строки между собой?")

