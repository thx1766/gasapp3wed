//
//  MaintainenceLogView.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/17/22.
//

import SwiftUI

//struct ServiceItem{
//    var id = UUID()
//    var serviceType: String
//    var description: String
//    var mileage: String
//    var cost: String
//}
//extension ServiceItem: Identifiable{
//
//}



struct ServiceLogView: View {
    
    var ServiceItems: [ServiceLogEntry] = [ServiceLogEntry(serviceType: "Oil change", description: "Oil change at jiffy Lube", mileage: "42000", cost: "$75"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50"), ServiceLogEntry(serviceType: "Tire Rotation", description: "Tire rotation", mileage: "42000", cost: "$50")
    ]
    
    @State var isNewServiceEntryModalPresented = false
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(ServiceItems){
                        item in
                        ServiceLogItem(displayItem: item)
                    }
                }
                Spacer()
                Button(){
                    isNewServiceEntryModalPresented = true
                }
                label:{
                    Text("New Service Entry")
                    
                }.buttonStyle(NewEntryButtonStyle())
            }
            .navigationTitle("Service Log")
            .sheet(isPresented: $isNewServiceEntryModalPresented){
                NewServiceEntryModal()
            }
            
        }
    }
}

struct ServiceLogView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceLogView()
    }
}
