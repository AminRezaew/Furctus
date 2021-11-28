//
//  FruitCardView.swift
//  Furctus
//
//  Created by Amin Rezaei on 7/30/1400 AP.
//

import SwiftUI


struct FruitCardView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 400)
                
                StrartButtonView()
                
                
            }//: Vstack
        }//: Zstack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    var fruit: Fruit
    static var previews: some View {
        FruitCardView(fruit: fruitesData[4]).previewLayout(.fixed(width: 320, height: 640))
    }
}
