//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Eugene on 10/10/2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var searchText = ""
    let allNames = ["Steph", "Klay", "Dray"]
    
    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searching")
        }
      
    }
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            return allNames
        } else {
            return allNames.filter { $0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
