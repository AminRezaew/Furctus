//
//  FruitRow.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/1/1400 AP.
//

import SwiftUI

struct FruitRow: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack (alignment: .leading) {
                Text(fruit.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruit: fruitesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
