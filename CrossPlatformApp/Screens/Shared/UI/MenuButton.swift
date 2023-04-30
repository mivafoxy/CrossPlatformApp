//
//  MenuButton.swift
//  CrossPlatformApp
//
//  Created by Илья Малахов on 30.04.2023.
//

import SwiftUI

struct MenuButton: View {
    private let title: String
    private let color: Color
    
    init(title: String, color: Color) {
        self.title = title
        self.color = color
    }
    
    var body: some View {
        Button(action: { print("Button \(title) pressed") }) {
            HStack {
                    Text(title)
                        .fontWeight(.semibold)
                        #if os(watchOS)
                        .font(.caption)
                        #else
                        .font(.title)
                        #endif
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
                .padding()
                .foregroundColor(.white)
                .background(color)
                .cornerRadius(40)
        }
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(title: "Play", color: .green)
    }
}
