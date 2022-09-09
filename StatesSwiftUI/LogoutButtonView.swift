//
//  LogoutButtonView.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: logOut ) {
            Text("Logout")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 4))
    }
}

extension LogoutButtonView {
    private func logOut() {
        if user.isRegister {
            user.isRegister.toggle()
        }
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
