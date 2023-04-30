//
//  SettingsScreen.swift
//  CrossPlatformApp
//
//  Created by Илья Малахов on 30.04.2023.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        ScrollView {
            Text("Settings")
                .fontWeight(.semibold)
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity)
            ScrollView {
                MenuButton(title: "Audio", color: .gray)
                MenuButton(title: "Video", color: .gray)
                MenuButton(title: "Graphics", color: .gray)
                MenuButton(title: "Difficulity", color: .gray)
            }
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
