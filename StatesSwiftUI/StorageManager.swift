//
//  StorageManager.swift
//  StatesSwiftUI
//
//  Created by Илья Гусаров on 09.09.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("name") var name = ""
}
