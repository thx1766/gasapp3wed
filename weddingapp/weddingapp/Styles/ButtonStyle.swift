//
//  ButtonStyle.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/16/22.
//

import SwiftUI

struct PrimaryButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .frame(maxWidth: .infinity)//this helps make a view stretch across the width of the screen
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(8)
    }
}
