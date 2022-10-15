//
//  dataStore.swift
//  SOLID1
//
//  Created by Kirill Frolovskiy on 02.10.2022.
//

import Foundation

class DataStore {

    func saveNameInCache(name: String) {
        print("Your name: \(name) is saved.")
    }
    
    func getNameFromCache() {
        print("Some name")
    }
}
