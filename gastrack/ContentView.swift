//
//  ContentView.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FuelLogView()
                .tabItem{
                    Image(systemName: "fuelpump")
                    Text("Fuel")
                }
            ServiceLogView()
                .tabItem{
                    Image(systemName: "wrench.and.screwdriver")
                    Text("Service")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
