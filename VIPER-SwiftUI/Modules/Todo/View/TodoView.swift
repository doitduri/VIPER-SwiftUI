//
//  TodoView.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import SwiftUI

struct TodoView: ViewInterface, View {
    
    var presenter: TodoPresenterViewInterface!
    
    @EnvironmentObject var env: TodoEnvironment
    @ObservedObject var viewModel: TodoViewModel
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TextField("새로운 할 일을 입력해주세요.", text: self.$name,onCommit: self.new)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                
                if self.viewModel.error {
                    Spacer()
                    Text("가져오는데 실패했습니다.")
                    Spacer()
                } else if self.viewModel.todos.isEmpty {
                    Spacer()
                    Text("🗑")
                    Text("할 일이 비었어요.")
                    Button(action: {
                        self.presenter.fetch()
                    }) {
                        Text("할 일 목록 가져오기")
                    }
                    Spacer()
                    Spacer()
                }else {
                    List {
                        ForEach(self.viewModel.todos) { todo in
                            TodoListItemView(todo: todo)
                                .onTapGesture{
                                    self.presenter.toggle(todo: todo)
                                }
                        }
                        .onDelete(perform: self.delete)
                    }
                }
            }
            .navigationBarTitle(Text(self.env.title))
        }
    }
    
    func new() {
        self.presenter.newTodo(with: self.name)
        self.name = ""
    }
    
    func delete(at offsets: IndexSet) {
        self.presenter.delete(at: offsets)
    }
    
}

#if DEBUG
struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = TodoPresenter()
        let viewModel = TodoViewModel()
        presenter.viewModel = viewModel
        return TodoView(presenter: presenter,
                        viewModel: viewModel)
        .environmentObject(TodoEnvironment())
    }
}
#endif

