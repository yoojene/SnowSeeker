//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Eugene on 10/10/2023.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Eugene")
            Text("Country: England")
            Text("Pets: Wilson")
        }
        .font(.title)
        
    }
}
struct ContentView: View {
    
    @State private var layoutVertically = false

    var body: some View {
        Group {
            if layoutVertically {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
        .onTapGesture {
            layoutVertically.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
