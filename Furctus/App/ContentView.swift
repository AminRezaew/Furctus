//
//  ContentView.swift
//  Furctus
//
//  Created by Amin Rezaei on 7/30/1400 AP.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitesData
    @State private var isShowingSetting = false
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRow(fruit: item)
                                .padding(.vertical,4 )
                        })
                }
            }
            .navigationTitle("Fruit")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSetting = true
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                    })
                                    .sheet(isPresented: $isShowingSetting, content: {
                                        SettingsView()
                                    })
            )
        }// navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitesData)
            .previewDevice("iPhone 12 Pro Max")
    }
}
