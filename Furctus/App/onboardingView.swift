//
//  onboardingView.swift
//  Furctus
//
//  Created by Amin Rezaei on 7/30/1400 AP.
//

import SwiftUI

struct onboardingView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitesData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]) {item in
             FruitCardView(fruit: item)
            }//: LOOP
            
        }.tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

// MARK: - PREVIEW

struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView(fruits: fruitesData)
            .previewDevice("iPhone 12 Pro Max")
    }
}
