//
//  Singletone.swift
//  UserDefaults
//
//  Created by Алексей Моторин on 11.07.2022.
//

import Foundation

class SingleTone {
    
    static let singleTone = SingleTone()
    
    private init() {}
    
    var userDefault = UserDefaults.standard
    
    func saveAdress(city: String, street: String, house: String, build: String?, flat: String) {
        let adress = UserAdress(city: city, street: street, house: house, build: build, flat: flat)
        Adresses.userAdresses.insert(adress, at: 0)
    }
    
}
