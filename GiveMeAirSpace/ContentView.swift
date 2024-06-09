//
//  ContentView.swift
//  IbrahimsViolationStation
//
//  Created by Ibrahim Khan on 08/06/2024.
//

import SwiftUI

let navT = ["Im taking off bitches!", "Im in the air bitches!", "Ive landed bitches!"]

let Emoji = ["🛫", "🛩️", "🛬"]

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text(Emoji[selection])
                    .font(.system(size: 150))
                Picker("Select State", selection: $selection) {
                    Text("🛫").tag(0)
                    Text("🛩️").tag(1)
                    Text("🛬").tag(2)
                }
                .pickerStyle(.segmented)
                .padding()
            }
            .navigationTitle(navT[selection])
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
