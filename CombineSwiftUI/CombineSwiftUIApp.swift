//
//  CombineSwiftUIApp.swift
//  CombineSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 21/02/23.
//

import SwiftUI

@main
struct CombineSwiftUIApp: App {
    
    var model: Model = Model() // para caso EnvironmentObject
    
    var body: some Scene {
        WindowGroup {
            EnvironmentObjectView()
                .environmentObject(model) // para caso EnvironmentObject
        }
    }
}
