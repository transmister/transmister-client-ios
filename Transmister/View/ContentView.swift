//
//  ContentView.swift
//  Transmister
//
//  Created by Louis Aeilot on 2020/8/20.
//  Copyright © 2020 Louis Studio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showPop = false
    
    var body: some View {
        NavigationView {
            SideTab()
                .navigationBarTitle("Transmister")
                .navigationBarItems(leading: Button(action: {
                    self.showPop.toggle()
                }) {
                    Image(systemName: "gear")
                })
            ChatListView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
        .sheet(isPresented: $showPop, content: {
            SettingsView()
        })
    }
}

struct SideTab: View{
    @State private var selection = 0
    @State private var showPop = false
    @State private var showLabel = true
    
    init(){
        let defaults = UserDefaults.standard
        let launchTimes = defaults.integer(forKey: "launchTimes")
        
    }
    
    var body: some View{
        VStack{
            if showLabel{
                VStack{
                    Text("Warning!")
                    .bold()
                    .font(.headline)
                    Text("It looks if you haven't set your server yet.")
                    .font(.subheadline)
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation{
                        self.showLabel = false
                        self.showPop = true
                    }
                }
            }
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
            }.sheet(isPresented: $showPop, onDismiss: {
                
            }, content: {
                QuickStartView()
            })
        }
    }
}

struct QuickStartView: View{
    var body: some View{
        Text("Wow")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
