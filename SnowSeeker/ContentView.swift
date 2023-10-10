//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Eugene on 10/10/2023.
//

import SwiftUI

struct User: Identifiable {
    var id = "Steph Curry"
    
}

struct ContentView: View {
    
    @State private var selectedUser: User? = nil // User is optional,
    var body: some View {

        Text("Hello, world")
            .onTapGesture {
                selectedUser = User()
            }
            .sheet(item: $selectedUser) { user in // if selectedUser exists, then user coming in will be non optional.  No need to force unwrap
                Text(user.id)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
