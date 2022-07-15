//
//  EntertainmentRow.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/12/22.
//

import SwiftUI

struct EntertainmentRow: View {
    var entertainmentItem: LocalEntertainment
    var body: some View {
        VStack{
            
            HStack{
                //task: image, float to left, 20px from edge
                Image("Image1")//default size until resizable
                    .resizable()//critical, without this frame changes will not effect
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
                    .frame(width: 40, height: 40)
                    .padding(.leading, 20)
                    .padding([.top, .bottom], 10)
                Text(entertainmentItem.title)
                    .padding([.leading, .trailing], 20)
                    .font(.system(size: 12, weight: .bold))
                Spacer()
            }
            .background(Color(red: 0.93, green: 0.93, blue: 0.93))
            .cornerRadius(7)
            .padding([.leading, .trailing], 10)
        }
    }
}

struct EntertainmentRow_Previews: PreviewProvider {
    static var previews: some View {
        EntertainmentRow(
            entertainmentItem: LocalEntertainment(title: "test title", bodyText: "body text")
        )
    }
}
