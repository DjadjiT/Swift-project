//
//  DishRow.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import SwiftUI

struct DishRow: View {
    
    var dish: Dishes
    
    
    var body: some View {
        HStack{
            
            VStack(alignment: .center) {
                Text(dish.name)
                    .font(.largeTitle)
                    .bold()
                Text(dish.description)
                
            }
        }
        
    }
    
}

