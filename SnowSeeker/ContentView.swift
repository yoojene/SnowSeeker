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
    @State private var isShowingUser = false // need to pass a boolean as well
    var body: some View {

        Text("Hello, world")
            .onTapGesture {
                selectedUser = User()
                isShowingUser = true
            }
            .alert("Welcome", isPresented: $isShowingUser) { } // passing an empty closure will still give you an OK button that dismisses the alert by default
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
