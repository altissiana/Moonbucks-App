//
//  DrinkRow.swift
//  Moonbucks
//
//  Created by Tissiana Alves on 5/26/20.
//  Copyright © 2020 Tissiana Alves. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(self.categoryName)
                .font(.title)
                
            ScrollView(showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (drinks, id: \.self) {
                    drink in
                    DrinkItem(drink: drink)
                        .frame(width: 300)
                        .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}

struct DrinkRow_Previews : PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
