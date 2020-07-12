//
//  Dishes.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import UIKit

struct Dishes : Identifiable{
    let id: Int
    let name: String
    let description: String
    let image : UIImage?
    
    init(id:Int, name:String, description: String, image: UIImage?=nil){
        self.id=id
        self.name=name
        self.description=description
        self.image=image
    }
}

