//
//  RoomsAppApp.swift
//  RoomsApp
//
//  Created by Mohammad Azam on 11/30/21.
//

import SwiftUI

@main
struct RoomsAppApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            ContentView().environment(\.managedObjectContext, viewContext)
        }
    }
}
