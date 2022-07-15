//
//  EntertaimentDetailView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/15/22.
//

import SwiftUI

struct EntertaimentDetailView: View {
    @State var entertainmentItem: LocalEntertainment
    //@State var titleLabel = "default value"
    var body: some View {
        VStack{
            Text(entertainmentItem.title).font(.system(size: 24, weight: .bold))
            Spacer()
            Text(entertainmentItem.bodyText).font(.system(size:12, weight: .semibold))
            Spacer()
            Button {
                entertainmentItem.title = "Changed"
            } label: {
                Text("Change Title")
            }

        }
        
    }
}

//struct EntertaimentDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        EntertaimentDetailView(entertainmentItem: LocalEntertainment(title: "Test Title", bodyText: "Test Body Text"))
//    }
//}
