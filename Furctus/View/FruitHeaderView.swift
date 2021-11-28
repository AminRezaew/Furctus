//
//  FruitHeaderView.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/1/1400 AP.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimation = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
        }// : Zstack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitesData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
