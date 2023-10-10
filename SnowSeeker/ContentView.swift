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
    
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(content: UserView.init)
            } else {
                HStack(content: UserView.init)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
