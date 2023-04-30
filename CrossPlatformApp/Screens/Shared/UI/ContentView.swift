//
//  ContentView.swift
//  CrossPlatformApp
//
//  Created by Илья Малахов on 30.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                PlayMenuScreen()
                    .tabItem { Text("Play") }
                
                LeaderboardViewScreen()
                    .tabItem { Text("Settings") }
                
                SettingsScreen()
                    .tabItem { Text("Leaderboard") }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
