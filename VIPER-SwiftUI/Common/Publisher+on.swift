//
//  Publisher+on.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation
import Combine

public extension Publisher {
    func on(queue: DispatchQueue) -> Publishers.ReceiveOn<Self, DispatchQueue> {
        self.receive(on: queue, options: nil)
    }
    
    func on(success: @escaping ((Self.Output) -> Void),
            failure: @escaping ((Self.Failure) -> Void)) -> AnyCancellable {
        self.sink(receiveCompletion: { completion in
            switch completion {
            case .failure(let error):
                failure(error)
            case .finished:
                break
            }
        }, receiveValue: success)
    }
}
