//
//  SettingsLableView.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/2/1400 AP.
//

import SwiftUI

struct SettingsLableView: View {
    
    var lableText: String
    var lableImage: String
    
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
                Spacer()
            Image(systemName: lableImage)
        }
    }
}

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(lableText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
