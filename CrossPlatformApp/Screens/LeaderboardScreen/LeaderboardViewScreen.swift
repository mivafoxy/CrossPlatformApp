//
//  LeaderboardViewScreen.swift
//  CrossPlatformApp
//
//  Created by Илья Малахов on 30.04.2023.
//

import SwiftUI

struct LeaderboardViewScreen: View {
    private let leadersAndScores =
    [
        "aaa : 1000000 scores",
        "bbb : 900000 scores",
        "ccc : 800000 scores",
        "ddd : 700000 scores",
        "You : 600000 scores",
        "eee : 500000 scores",
        "fff : 400000 scores",
        "ggg : 300000 scores",
        "hhh : 200000 scores",
        "iii : 100000 scores"
    ]
    
    var body: some View {
        VStack {
            Text("Leaders")
                .fontWeight(.semibold)
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity)
            ScrollView {
                VStack {
                    ForEach(leadersAndScores, id: \.self) { leaderAndScore in
                        Text(leaderAndScore)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(40)
                            #if os(tvOS)
                            .focusable()
                            #endif
                    }
                }
            }
        }
        
        
    }
}

struct LeaderboardViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardViewScreen()
    }
}
