//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Joseph Langat on 25/05/2023.
//

import SwiftUI

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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
