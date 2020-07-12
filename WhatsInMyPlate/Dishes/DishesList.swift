//
//  DishesList.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import SwiftUI




struct DishesList: View {
    
    var dishes: [Dishes]
    
    var dishRepo: DishesRepository
    
    var dishesIdCount:Int
    
    let newList: [Dishes]=[
        Dishes(id: 0, name: "Cookie", description: "Test cookie"),
        Dishes(id: 1, name: "fraisier", description: "Test fraisier"),
        Dishes(id: 2, name: "tarte", description: "Test tarte"),
    ]
    
    init() {
        self.dishRepo=DishesRepository(userDefaults: UserDefaults.standard)
        if let dishes=dishRepo.getDishesList() {
            self.dishes=dishes
        }else {
            self.dishes=newList
        }
        self.dishesIdCount=dishRepo.getID()
    }
    
    var body: some View {
        NavigationView{
            ZStack {
                List{
                    ForEach(dishes, id: \.id){ dish in
                        DishRow(dish: dish)
                    }
                    
                }
                Button(action: {
                    
                    
                }){
                    
                    Image(systemName: "plus")
                }.padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(Color.green.opacity(0.80))
                .clipShape(Circle())
                    .shadow(color: .green, radius: 4)
                
            }.padding(.bottom, -600)
                .padding(.trailing, -300)
            
        }

    }
}

struct DishesList_Previews: PreviewProvider {
    
    static var previews: some View {
            
        return DishesList()
    }
}
