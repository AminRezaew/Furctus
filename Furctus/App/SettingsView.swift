//
//  SwttingsView.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/2/1400 AP.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var mode
    @AppStorage("onboarding") var isOnboarding = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox (
                        label:
                            SettingsLableView(lableText: "Fructus", lableImage: "info.circle")){
                        Divider().padding(.vertical, 4)
                        
                        
                        
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and clories. None have cholesterol. Fruits are sources of essential nutrients, including potassium, dietary fiber, vitamins and more...")
                                .font(.footnote)
                        }
                    }
                    
                    
                    GroupBox(label: SettingsLableView(lableText: "Customization", lableImage: "pintbrush") ) {
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish, you can restart the application by toggle the switchin this box. That way it starts the onboarding procces and and you will see the welcom screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                      
                    GroupBox (
                        label: SettingsLableView(lableText: "application", lableImage: "apps.iphone")) {
                        SettingRowView(name: "Developer", content: "Amin")
                        SettingRowView(name: "Designer", content: "Amin")
                        SettingRowView(name: "Compatibility", content: "iOS 15")
                        SettingRowView(name: "Telegram", linkLable: "@AminRez23",linkDestination: "t.me/AminreZ23")
                        SettingRowView(name: "SwiftUI",content: "2.0")
                        SettingRowView(name: "Version",content: "1.1.0 ")
                        
                    }
                    
                    
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            mode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
