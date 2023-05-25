//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Joseph Langat on 25/05/2023.
//

import SwiftUI
//Custom modifier start
struct WaterMrk: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(WaterMrk(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
//Custom modifier end

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
extension View {
    func titleStyle() -> some View {
        modifier(Title())
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
            Text("Custom modifier text")
//                .modifier(Title())
                .titleStyle()
            Text("Another Custom modifier text")
                .frame(width: 100, height: 30)
                .background(.red)
            VStack {
                Color.brown
                    .frame(width: 300, height: 200)
                    .watermarked(with: "On Offer")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
