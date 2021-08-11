//
//  TodoEnvironment.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import Combine

final class TodoEnvironment: ObservableObject {

    let objectWillChange = ObservableObjectPublisher()

    @Published var title: String = "Todo list" {
       willSet {
            self.objectWillChange.send()
        }
    }
}
