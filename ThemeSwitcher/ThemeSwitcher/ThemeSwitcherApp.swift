//
//  ThemeSwitcherApp.swift
//  ThemeSwitcher
//
//  Created by Manish Parihar on 08.12.25.
//

import SwiftUI

@main
struct ThemeSwitcherApp: App {
    
    @State private var themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(themeManager)
        }
    }
}
