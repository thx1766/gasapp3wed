//
//  NewFuelEntryModal.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/17/22.
//

import SwiftUI
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    @Published var location: CLLocationCoordinate2D?

    override init() {
        super.init()
        manager.delegate = self
    }

    func requestLocation() {
        manager.requestLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
}

struct NewFuelEntryModal: View {
    
    @State var localNewEntry: FuelLogEntry = FuelLogEntry()
    @State var isEntrySubmitted = false
    @State var autoGPS = false
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack{
            Form{
                Section(header: Text("Mileage")){
                    TextField("Mileage", value: $localNewEntry.mileage, formatter: NumberFormatter()).keyboardType(.decimalPad)
                }
                Section(header:Text("Location")){
                    TextField("Location Name", text: $localNewEntry.locationName)
                    Toggle(isOn: $autoGPS){
                        Text("AutoGPS")
                    }
                    
                    if let location = locationManager.location{
                        Text("Lat:\(location.latitude) Lon:\(location.longitude)")
                    }
                        
                        LocationButton{
                            locationManager.requestLocation()
                            
                        }.frame(height: 44)
                            .padding()
                    
                    
                    
                    
                }
            }
            
//            List{
//                HStack{
//                    Text("Mileage:")
//                    TextField("Mileage", value: $localNewEntry.mileage, formatter: NumberFormatter()).keyboardType(.decimalPad)
//                }
//                
//                TextField("Location", text: $localNewEntry.locationName)
//                
//                //price
//                TextField("Price", value: $localNewEntry.price, formatter: NumberFormatter()).keyboardType(.decimalPad)
//                //amount
//                TextField("Amount", value: $localNewEntry.amount, formatter: NumberFormatter()).keyboardType(.decimalPad)
//                //totalcost
//                TextField("Total Cost", value: $localNewEntry.totalCost, formatter: NumberFormatter()).keyboardType(.decimalPad)
//                
//                Button(){isEntrySubmitted = true}label: {Text("Submit Entry")}
//            }
        }
//        VStack{
//            Text("top")
//            Spacer()
//            Text("Above Text Entry")
//
//            Text("below")
//            Spacer()
//            Text("Bottom")
//        }
    }
}

struct NewFuelEntryModal_Previews: PreviewProvider {
    static var previews: some View {
        NewFuelEntryModal(localNewEntry:
//                            FuelLogEntry(locationName: "Test", mileage: 44088, price: 4.899, amount: 3.0, totalCost: 12.00)
//
                          FuelLogEntry()
        )
    }
}
