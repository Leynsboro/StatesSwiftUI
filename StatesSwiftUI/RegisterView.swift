//
//  RegisterView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            SymbolCounterView(name: $name)
            RegisterButtonView(name: $name)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
