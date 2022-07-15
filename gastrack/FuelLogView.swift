//
//  FuelLogView.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/17/22.
//

import SwiftUI

struct FuelLogView: View {
    var FuelLogItems: [FuelLogEntry] = [
        FuelLogEntry(timestamp: Date(), locationName: "BJ's Vineland", mileage: 42001, price: 2.739, amount: 11.376, totalCost: 31.16, syncState: .unsynced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .unsynced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .unsynced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .syncing),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .syncing),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced),
        FuelLogEntry(timestamp: Date(), locationName: "Wawa Bridgeton", mileage: 42403, price: 2.999, amount: 14.339, totalCost: 43.00, syncState: .synced)
    ]
    
    @State var isNewFuelEntryModalPresented = false
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(FuelLogItems) {
                        item in
                        FuelLogItem(displayItem: item)
                    }
                    
                }
                Spacer()
                Button(){
                    isNewFuelEntryModalPresented = true
                }label: {
                    Text("New Fuel Entry")
                }.buttonStyle(NewEntryButtonStyle())
            }.navigationTitle("Fuel Log")
                .sheet(isPresented: $isNewFuelEntryModalPresented){
                    NewFuelEntryModal(localNewEntry: FuelLogEntry())
                }
        }
    }
}

struct FuelLogView_Previews: PreviewProvider {
    static var previews: some View {
        FuelLogView()
    }
}
