//
//  Network.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/11.
//

import Foundation

struct HTTP {
    enum Method: String {
        case get
        case post
        case put
        case delete
        case patch
    }
    
    enum Error: LocalizedError {
        case unknown(Swift.Error)
        case response
        case status(Int)
        case data
    }
}
