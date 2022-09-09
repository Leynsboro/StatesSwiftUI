//
//  StarterView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    @EnvironmentObject var storage: StorageManager
    
    var body: some View {
        Group {
            if storage.isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
            .environmentObject(StorageManager())
    }
}
