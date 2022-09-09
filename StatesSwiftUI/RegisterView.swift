//
//  RegisterView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            SymbolCounterView(name: $name)
            RegisterButtonView(name: $name)
            Button(action: {print(user.name)}) {
                Text("LOL")
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
