//
//  Adressed.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import Foundation

struct Adresses {
    
    var userDefault = UserDefaults.standard
    
    static var userAdresses: [UserAdress] {
        get {
            let userDefault = UserDefaults.standard
            if let data = userDefault.value(forKey: KeyDefaults.adresses.rawValue) as? Data {
                if let userAdresses = try? PropertyListDecoder().decode([UserAdress].self, from: data) {
                    return userAdresses
                }
            }
            return [UserAdress]()
        }
        set {
            if let data = try? PropertyListEncoder().encode(newValue) {
                let userDefault = UserDefaults.standard
                userDefault.set(data, forKey: KeyDefaults.adresses.rawValue)
            }
        }
    }
    
    
}

