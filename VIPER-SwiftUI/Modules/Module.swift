//
//  Module.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation

public protocol ModuleInterface {
    associatedtype View where View: ViewInterface
    associatedtype Presenter where Presenter: PresenterInterface
    associatedtype Router where Router: RouterInterface
    associatedtype Interactor where Interactor: InteractorInterface
    
    func assemble(/*view: View, */presenter: Presenter, router: Router, interactor: Interactor)
    
}

public extension ModuleInterface {
    func assemble(/*view: View, */presenter: Presenter, router: Router, interactor: Interactor) {
        
        /*
        view.presenter = (presenter as! Self.View.PresenterView)
        
        presenter.view = (view as! Self.Presenter.ViewPresenter)
        */
        presenter.interactor = (interactor as! Self.Presenter.InteractorPresenter)
        presenter.router = (router as! Self.Presenter.RouterPresenter)
        
        interactor.presenter = (presenter as! Self.Interactor.PresenterInteractor)
        
        router.presenter = (presenter as! Self.Router.PresenterRouter)
    }
}
