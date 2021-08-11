//
//  TodoEntity.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import SwiftUI

struct TodoEntity: EntityInterface, Codable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}
