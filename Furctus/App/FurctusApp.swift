//
//  FurctusApp.swift
//  Furctus
//
//  Created by Amin Rezaei on 7/30/1400 AP.
//

import SwiftUI

@main
struct FurctusApp: App {
    @AppStorage("onboarding") var onboarding = true
    
    var body: some Scene {
        WindowGroup {
            if onboarding {
                
                onboardingView()
                
            }else {
                ContentView()
            }
        }
    }
}
