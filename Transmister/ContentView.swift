//
//  ContentView.swift
//  Transmister
//
//  Created by Louis Aeilot on 2020/8/20.
//  Copyright © 2020 Louis Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SideTab().navigationBarTitle("Wow")
            ChatListView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct SideTab: View{
    @State private var selection = 0
    
    var body: some View{
        TabView(selection: $selection){
            ContactView()
            .tabItem {
                VStack {
                    Image(systemName: "person.crop.circle")
                    Text("Contact")
                }
            }
            .tag(0)
            ChatListView()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
