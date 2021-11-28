//
//  StrartButtonView.swift
//  Furctus
//
//  Created by Amin Rezaei on 7/30/1400 AP.
//

import SwiftUI

struct StrartButtonView: View {
    //MARK: - PROPERTIES
    
    @AppStorage("onboarding") var onboarding: Bool?
    
    //MARK: - BODY
    
    var body: some View {
        Button(action: {
            onboarding = false
        }, label: {
            HStack {
                Text("start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().stroke(Color.white, lineWidth: 1.25))
        })
        .accentColor(Color.white)
    }
}
//MARK: - PREVIEW
struct StrartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StrartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
