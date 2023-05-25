//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Joseph Langat on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        VStack {
            Button("Hello, world") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
            .padding(.bottom,50)
            Text("Hello, World")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.brown)
            Button("Click to toggle my color") {
                useRedText.toggle()
            }
            .foregroundColor(useRedText ? .red : .blue)
            .padding(.top,50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
