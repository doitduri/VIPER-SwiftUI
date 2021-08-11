//
//  Todo.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import SwiftUI
import Combine
import UIKit


// MARK: - router

protocol TodoRouterPresenterInterface: RouterPresenterInterface {
}

// MARK: - presenter

protocol TodoPresenterRouterInterface: PresenterRouterInterface {
}

protocol TodoPresenterInteractorInterface: PresenterInteractorInterface{
}

protocol TodoPresenterViewInterface: PresenterViewInterface {
    func fetch()
    func newTodo(with title: String)
    func delete(at offsets: IndexSet)
    func toggle(todo: TodoEntity)
}

// MARK: interactor

protocol TodoInteractorPresenterInterface: InteractorPresenterInterface {
    func requestPublisher() -> AnyPublisher<[TodoEntity], HTTP.Error>
}

// MARK: - module builder

final class TodoModule: ModuleInterface {
    typealias View = TodoView
    typealias Presenter = TodoPresenter
    typealias Router = TodoRouter
    typealias Interactor = TodoInteractor

    func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = TodoViewModel()
        let view = View(presenter: presenter, viewModel: viewModel)
            .environmentObject(TodoEnvironment())
        presenter.viewModel = viewModel

        self.assemble(presenter: presenter, router: router, interactor: interactor)

        let viewController = UIHostingController(rootView: view)
        router.viewController = viewController
        return viewController
    }
}
