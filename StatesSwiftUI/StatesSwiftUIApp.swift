//
//  StatesSwiftUIApp.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

@main
struct StatesSwiftUIApp: App {
    @StateObject var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
