//
//  SymbolCounterView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct SymbolCounterView: View {
    @Binding var name: String
    @State private var color = Color.red
    
    var body: some View {
        HStack {
            TextField("Your Location", text: $name)
                .onChange(of: name) {
                    if $0.count > 2 {
                        color = .green
                    } else {
                        color = .red
                    }
                }
                .multilineTextAlignment(.center)
            Text("\(name.count)")
                .foregroundColor(color)
                .frame(width: 50)
        }
    }
}

struct SymbolCounterView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCounterView(name: .constant("Tim"))
    }
}
