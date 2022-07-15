//
//  NewEntryButtonStyle.swift
//  gastrack
//
//  Created by Nate Schaffner on 6/17/22.
//

import SwiftUI

struct NewEntryButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
        
    }
}
