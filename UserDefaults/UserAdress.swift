//
//  Base.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import Foundation

struct UserAdress: Codable {
    var city: String
    var street: String
    var house: String
    var build: String?
    var flat: String
    
    var discription: String {
        return "city: \(city), street: \(street), house: \(house), build \(build ?? ""), flat: \(flat)"
    }

}
