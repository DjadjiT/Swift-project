//
//  DishesRepository.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class DishesRepository {
    
    var userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults=userDefaults
    }
    
    func saveDishesList(dishes: [Dishes]){
        userDefaults.set(dishes, forKey: "dishes")
    }
    
    func getDishesList() -> [Dishes]?{
        if let dishes=userDefaults.array(forKey: "dishes"){
            return dishes as? [Dishes]
        }
        return nil
    }
    
    func setDishesID(id: Int){
        userDefaults.set(id, forKey: "id")
    }
    
    func getID() -> Int{
        return userDefaults.integer(forKey: "id")
    }
    
}
