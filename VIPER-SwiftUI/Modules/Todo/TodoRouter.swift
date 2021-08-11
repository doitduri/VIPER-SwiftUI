//
//  TodoRouter.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import UIKit

final class TodoRouter: RouterInterface {
    weak var presenter: PresenterRouterInterface!
    weak var viewController: UIViewController?
}

extension TodoRouter: TodoRouterPresenterInterface{
    
}
