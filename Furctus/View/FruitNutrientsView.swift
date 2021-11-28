//
//  FruitNutrientsView.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/1/1400 AP.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutreis: [String] = ["Energy","Suger","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox()  {
            DisclosureGroup("Nutrietional value per 100g") {
                ForEach(0..<nutreis.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            
                            Text(nutreis[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
    }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitesData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
