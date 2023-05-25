//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Joseph Langat on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Hello, world") {
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
            Text("Hello, World")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.brown)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
