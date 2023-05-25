//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Joseph Langat on 25/05/2023.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var city1: some View {
        Text("Nairobi")
    }
    
    let city2 = Text("Kisumu")
    
    @ViewBuilder var otherCities: some View {
        Text("Kericho")
        Text("Narok")
        Text("Embu")
    }
    
    var body: some View {
        VStack{
            otherCities
            VStack{
                CapsuleText(text: "Kamba")
                    .foregroundColor(.white)
                Text("Kamba")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                CapsuleText(text: "Luyha")
                    .foregroundColor(.yellow)
                Text("Luyha")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
