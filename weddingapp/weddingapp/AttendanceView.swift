//
//  AttendanceView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/16/22.
//

import SwiftUI

struct AttendanceView: View {
    @Binding var isModalPresented: String
    var body: some View {
        VStack{
            Text(isModalPresented)
            Button {
                isModalPresented = "yes"
            } label: {
                Text("Click Me")
            }

        }
        
    }
}


//
//struct AttendanceView_Previews: PreviewProvider {
//    static var previews: some View {
//        //@State var text = "test"
//        //AttendanceView(isModalPresented: $text)
//    }
//}
