//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Eugene on 10/10/2023.
//

import Foundation

class Favorites: ObservableObject {
    private var resorts: Set<String>
    private let saveKey = "Favorites"
    
    init() {
        // Load saved favorites from UserDefaults
        if let savedResorts = UserDefaults.standard.object(forKey: saveKey) as? Data {
            let decoder = JSONDecoder()
            if let loadedResorts = try? decoder.decode(Set<String>.self, from: savedResorts) {
                print(loadedResorts)
                resorts = loadedResorts
            } else {
                resorts = []
            }
        } else {
            resorts = []
        }

    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort){
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        // Add to UserDefaults
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(resorts) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
}
