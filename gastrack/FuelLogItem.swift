//
//  fuelLogItem.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/14/22.
//

import SwiftUI

struct FuelLogEntry{
    var id = UUID()
    var timestamp: Date
    var locationName: String
    var mileage: Int
    var price: Double
    var amount: Double
    var totalCost: Double
    var syncState: syncStates
    
    init(id: UUID = UUID(), timestamp: Date = Date(), locationName: String = "", mileage: Int = 0, price: Double = 0.0, amount: Double = 0.0, totalCost: Double = 0.0, syncState: syncStates = .unsynced) {
        self.id = id
        self.timestamp = timestamp
        self.locationName = locationName
        self.mileage = mileage
        self.price = price
        self.amount = amount
        self.totalCost = totalCost
        self.syncState = syncState
    }
    
//    init(locationName: String, mileage: Int, price: Double, amount: Double, totalCost: Double) {
//        self.id = UUID()
//        self.timestamp = Date()
//        self.locationName = locationName
//        self.mileage = mileage
//        self.price = price
//        self.amount = amount
//        self.totalCost = totalCost
//        self.syncState = .unsynced
//    }
}

extension FuelLogEntry: Identifiable{
    
}

enum syncStates{
//    static let unsafe = Color(.red)
//    static let synced = Color(.green)
    case unsynced
    case syncing
    case synced
}

func getSyncStateColor(for syncState: syncStates) -> Color{
    switch (syncState){
        case .unsynced: return .red
        case .syncing: return .blue
        case .synced: return .green
    }
}

struct FuelLogItem: View {
    var displayItem: FuelLogEntry
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text(displayItem.locationName)
                Spacer()
                Image(systemName: "icloud.circle")
                    .foregroundColor(getSyncStateColor(for: displayItem.syncState))
            }
            HStack{
                
                Text( displayItem.timestamp, style: .date)
                
                Text( displayItem.timestamp, style: .time)
                Spacer()
                Text(String(format:"%dm", displayItem.mileage))
            }
            HStack{
                //Spacer()
                //Text("Amount:")
                //Spacer()
                Text(String(format: "%.03fg", displayItem.amount))
                
                Spacer()
                Text("@")
                Spacer()
                Text(String(format:"$%.03f/g", displayItem.price))
                Spacer()
                Text("=")
                Spacer()
                Text(String(format: "$%.02f", displayItem.totalCost))
                //Spacer()
            }
        }
    }
}

struct fuelLogItem_Previews: PreviewProvider {
    static var previews: some View {
        FuelLogItem(displayItem: FuelLogEntry(timestamp: Date(), locationName: "new location", mileage: 42000, price: 4.999, amount: 15.123, totalCost: 75.60, syncState: .synced))
    }
}
