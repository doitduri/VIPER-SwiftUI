//
//  BaseModule.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation

public protocol RouterInterface: RouterPresenterInterface {
    associatedtype PresenterRouter

    var presenter: PresenterRouter! { get set }
}

public protocol InteractorInterface: InteractorPresenterInterface {
    associatedtype PresenterInteractor
    
    var presenter: PresenterInteractor! { get set }
}

public protocol PresenterInterface: PresenterRouterInterface & PresenterInteractorInterface & PresenterViewInterface {
    associatedtype RouterPresenter
    associatedtype InteractorPresenter
    /*associatedtype ViewPresenter*/

    var router: RouterPresenter! { get set }
    var interactor: InteractorPresenter! { get set }
    /*var view: ViewPresenter! { get set }*/
}

public protocol ViewInterface/*: ViewPresenterInterface*/ {
    associatedtype PresenterView
    
    var presenter: PresenterView! { get set }
}

public protocol EntityInterface {
    
}

// MARK: - "i/o" transitions

public protocol RouterPresenterInterface: AnyObject {
    
}

public protocol InteractorPresenterInterface: AnyObject {
    
}

public protocol PresenterRouterInterface: AnyObject {
    
}

public protocol PresenterInteractorInterface: AnyObject {
    
}

public protocol PresenterViewInterface: AnyObject {
    
}
