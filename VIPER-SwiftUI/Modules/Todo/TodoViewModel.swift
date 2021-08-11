//
//  TodoViewModel.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Combine
import SwiftUI

final class TodoViewModel: ObservableObject {
 
    let objectWillChange = ObservableObjectPublisher()
   
    @Published var error: Bool = false {
        willSet {
            self.objectWillChange.send()
        }
    }

    @Published var todos: [TodoEntity] = [] {
       willSet {
            self.objectWillChange.send()
        }
    }
}
