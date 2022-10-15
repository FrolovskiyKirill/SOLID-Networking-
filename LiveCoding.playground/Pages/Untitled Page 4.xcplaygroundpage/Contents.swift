//№ 4. Содержит ли одна строка другую?

//Задание: написать функцию, которая принемает строку и возвращает true если эта строка полностью содержится в другой строке, игнорируя регистр.

let str = "Hello, Swift"

str.lowercased().contains("hello".lowercased())

extension String {
    func customContains(_ string: String) -> Bool {
        return self.lowercased().contains(string.lowercased())
    }
}

str.customContains("HellO, swIft")

func check (string: String, string2: String) -> Bool {
    string.lowercased().contains(string2.lowercased())
}

check(string: "Hello, Swift", string2: "hello")
