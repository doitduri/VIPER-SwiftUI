//
//  TodoInteractor.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import Combine


final class TodoInteractor: InteractorInterface {
    weak var presenter: PresenterInteractorInterface!
}


extension TodoInteractor: TodoInteractorPresenterInterface {

    func requestPublisher() -> AnyPublisher<[TodoEntity], HTTP.Error> {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
        let request = URLRequest(url: url)
        return URLSession.shared.dataTaskPublisher(for: request)
        .tryMap { data, response in
            guard let httpResponse = response as? HTTPURLResponse else {
                throw HTTP.Error.response
            }
            guard httpResponse.statusCode == 200 else {
                throw HTTP.Error.status(httpResponse.statusCode)
            }
            return data
        }
        .decode(type: [TodoEntity].self, decoder: JSONDecoder())
        .mapError { error -> HTTP.Error in
            if let httpError = error as? HTTP.Error {
                return httpError
            }
            return HTTP.Error.unknown(error)
        }
        .eraseToAnyPublisher()
    }
}
