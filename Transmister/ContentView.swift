//
//  ContentView.swift
//  Transmister
//
//  Created by Louis Aeilot on 2020/8/20.
//  Copyright © 2020 Louis Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            ContactView()
            .tabItem {
                VStack {
                    Image(systemName: "person.crop.circle")
                    Text("Contact")
                }
            }
            .tag(0)
            ChatView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("Chat")
                    }
                }
                .tag(1)
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
                .tag(2)
        }
    }
}

struct ContactView: View {
    var body: some View {
        Text("WIP")
    }
}

struct ChatView: View {
    var body: some View {
        Text("WIP")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("WIP")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
