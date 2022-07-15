//
//  weddingappApp.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/12/22.
//

import SwiftUI
//behaves like a scene delgate
//where the app starts
@main
struct weddingappApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                GuestsView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Guests")
                    }
                TransportView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Transport")
                    }
                
            }
        }
    }
}
//calls content view
