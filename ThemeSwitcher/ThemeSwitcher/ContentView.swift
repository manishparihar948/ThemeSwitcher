//
//  ContentView.swift
//  ThemeSwitcher
//
//  Created by Manish Parihar on 08.12.25.
//

import SwiftUI

struct ContentView: View {
    @Environment(ThemeManager.self) private var themeManager: ThemeManager
    
    @State private var showThemes = false
    
    var body: some View {
        ZStack {
            Rectangle().fill(themeManager.selectedTheme.gradient)
            VStack {
                Button("Show Themes") {
                    showThemes.toggle()
                }
                .font(.system(.headline,
                              design: .rounded,
                              weight: .bold))
                .buttonStyle(.bordered)
                .foregroundStyle(.white)
                .controlSize(.large)
                .buttonBorderShape(.roundedRectangle)
            }
        }
        .animation(.bouncy, value: themeManager.selectedTheme)
        .ignoresSafeArea()
        .sheet(isPresented: $showThemes, content: {
            ThemeSwitcherView()
                .presentationDetents([.medium])
        })
    }
}


#Preview {
    ContentView()
        .environment(ThemeManager())
}
