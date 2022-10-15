//
//  CarsUsers.swift
//  SOLID1
//
//  Created by Kirill Frolovskiy on 13.10.2022.
//

import Foundation

struct CarsUsers: Decodable {
    let all_users: [Users]
}

struct Users: Decodable {
    let id: Int
    let login: String
}
