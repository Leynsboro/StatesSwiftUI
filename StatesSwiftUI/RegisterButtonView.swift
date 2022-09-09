//
//  RegisterButtonView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    @EnvironmentObject var user: UserManager
    @Binding var name: String
    
    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
    }
}

extension RegisterButtonView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(name: .constant("Tim"))
    }
}
