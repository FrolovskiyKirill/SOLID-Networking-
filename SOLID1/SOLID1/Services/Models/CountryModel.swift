//
//  CountryModel.swift
//  SOLID1
//
//  Created by Kirill Frolovskiy on 07.10.2022.
//

import Foundation

struct Countries: Decodable {
    var Id: String
    var Time: String
    var Name: String
    var Image: String?
}
