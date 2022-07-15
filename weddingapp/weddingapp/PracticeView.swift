//
//  ContentView.swift
//  weddingapp
//
//  Created by Nate Schaffner on 6/12/22.
//

import SwiftUI
//to modify a view, modify its state
//changing state triggers a re-render (reactive: redraw views when updates occur to state)

//structs are not mutable - not a class
//to change its value, it is updated with copy on update
struct PracticeView: View {
    var myfont: Font = .headline
    @State var name: String = "default"
    //convention: put functions after body

    var body: some View {
        //some is referred to an an opaque type: expecting a view (but not a specific one)
        //swift 5.6 documentation (opaque types)
        
        
        VStack(spacing:30) {
            
            //ORDER OF DECLARATIONS matters
            Image("dice")
                .resizable()//resizable is a view of type image that is resizable
                .scaledToFit()//image that is resizable and scaled to fit
                .frame(height: 200)//frame exports a generic view, not resizable
                .background(.blue)
            
            HStack {
                
                Spacer()
                
                Text("Hello, \(name)!")
                    .padding([.trailing, .leading], 20)
                    //creates padding around screen element
                    //essential to know to create spacing between uielements
                .font(.system(size: 15, weight: .semibold))
                
                    //15-16 points for body text, 20-24 for headers
                    //serif and sans-serif fonts
                    //monospaced style etc (.default is handy)
                
                //.padding() is a modifier
                
                
            }
            
            Button {
                name = "NewName"
            } label: {
                Text("Update Button")
            }

            
            
                        
        }
        .onAppear {
            //initliaize data before it loads
            name = "initial value"
        }
        
        //swuftui is declarative (UIKit is imperative)
        //create a label, then make view background red
        //label create padding etc
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
