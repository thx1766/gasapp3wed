//
//  MaintainanceLogItem.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/17/22.
//

import SwiftUI

struct ServiceLogEntry{
    var id = UUID()
    var serviceType: String
    var description: String
    var mileage: String
    var cost: String
}
extension ServiceLogEntry: Identifiable{
    
}

struct ServiceLogItem: View {
    var displayItem: ServiceLogEntry
    var body: some View {
        
        VStack{
            HStack{
                Text(displayItem.serviceType).font(.system(size: 14, weight: .bold))
                Spacer()
                Text(displayItem.cost).font(.system(size: 16, weight: .semibold))
            }
            HStack{
                Text(displayItem.description)
                    .font(.system(size:12, weight: .light))
                Spacer()
            }
        }
    }
}

struct ServiceLogItem_Previews: PreviewProvider {
    static var previews: some View {
        ServiceLogItem(displayItem: ServiceLogEntry(serviceType: "test", description: "test", mileage: "test", cost: "test"))
    }
}
