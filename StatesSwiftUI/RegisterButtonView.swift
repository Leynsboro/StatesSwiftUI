//
//  RegisterButtonView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    @EnvironmentObject var user: UserManager
    @EnvironmentObject var storage: StorageManager
    @Binding var name: String
    
    @State private var alertPresented = false
    
    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
        .alert("Enter valid name",
               isPresented: $alertPresented,
               actions: {}) {
            Text("Count symbols must be above 2")
        }
    }
}

extension RegisterButtonView {
    private func registerUser() {
        if !name.isEmpty, name.count > 2 {
            user.name = name
            user.isRegister.toggle()
            storage.name = name
            storage.isRegister.toggle()
        } else {
            alertPresented.toggle()
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(name: .constant("Tim"))
    }
}
