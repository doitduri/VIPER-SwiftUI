//
//  TodoListItemView.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import SwiftUI


struct TodoListItemView: View {
    @EnvironmentObject var env: TodoEnvironment
    
    let todo: TodoEntity
    
    var body: some View{
        VStack(alignment: .leading){
            
            if self.todo.completed {
                Text("✅ \(self.todo.title)").strikethrough()
            } else {
                Text(self.todo.title).font(.headline)
            }
        }
    }
}
