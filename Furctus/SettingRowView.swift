//
//  SettingRowView.swift
//  Furctus
//
//  Created by Amin Rezaei on 8/2/1400 AP.
//

import SwiftUI

struct SettingRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if  (content != nil) {
                    Text(content!)
                } else if (linkLable != nil && linkDestination != nil) {
                    Link( linkLable! ,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "Amin").previewLayout(.fixed(width: 370, height: 60))
            SettingRowView(name: "Developer", content: "Amin").preferredColorScheme(.dark).previewLayout(.fixed(width: 370, height: 60))
        }
    }
}
