//
//  HomeView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/12/22.
//

import SwiftUI

struct LocalEntertainment{
    let id = UUID()
    @State var title : String = ""
    @State var bodyText: String
    
}



extension LocalEntertainment: Identifiable {
    
}

//codable is for interchanging to JSON (and a lot more)

struct HomeView: View {
    
    var entertainmentItems : [LocalEntertainment] = [
        LocalEntertainment(title: "first item", bodyText: "body 1"),
        LocalEntertainment(title: "second item", bodyText: "body A")
    ]

    @State var isAttendanceViewPresented = false
    
    @State var countModalDismissed = 0
    
    @State var isModalDisplayed = "no"
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    VStack{
                        HStack{
                            Text("our story")
                                .font(.system(size: 24, weight: .bold ))
                                .padding()
                            Spacer()
                        }
                        Text("Lorem ipsum dolor sit amet consecutor adpicsing elit")
                    }
                }
                Image("Wedding")
                    .resizable()
                    .frame(height: 200)
                    .padding()
                List {
                    //table view from uikit
                    ForEach(entertainmentItems) { item in
                        
                        NavigationLink {
                            EntertaimentDetailView(entertainmentItem: item)
                        } label: {
                            EntertainmentRow(entertainmentItem: item)
                        }
                    }
                }
                Spacer()
                Button{
                    isAttendanceViewPresented = true
                } label: {
                    Text(isModalDisplayed)
                }
                .buttonStyle(PrimaryButton())
            }
            .navigationTitle("Wedding App")
            .sheet(isPresented: $isAttendanceViewPresented, onDismiss: {
                countModalDismissed += 1
            }) {
                AttendanceView(isModalPresented: $isModalDisplayed)
            }
        }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
