//
//  GuestsView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/15/22.
//

import SwiftUI

struct GuestsView: View {
    struct guestItem: Identifiable {
        var id = UUID()
        var name: String
    }
    let guests:[guestItem] = [
        guestItem(name: "name1"),
        guestItem(name: "name2"),
        guestItem(name: "name3")
    ]
    
    var body: some View {
        VStack{
            
            Image("Astronaut")
            Spacer()
            List{
                ForEach(guests) {guestitem in
                    Text(guestitem.name)
                }
            }
            Spacer()
        }.navigationTitle("Welcome Guest")
        
    }
}

struct GuestsView_Previews: PreviewProvider {
    static var previews: some View {
        GuestsView()
    }
}
