//
//  PlayMenuScreen.swift
//  CrossPlatformApp
//
//  Created by Илья Малахов on 30.04.2023.
//

import SwiftUI

struct PlayMenuScreen: View {
    var body: some View {
        VStack {
            Text("Game")
                .fontWeight(.semibold)
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity)
            ScrollView {
                MenuButton(title: "New game", color: Color.green)
                MenuButton(title: "Continue", color: .blue)
                MenuButton(title: "Close", color: .red)
            }
        }
    }
}

struct PlayMenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlayMenuScreen()
    }
}
