//
//  API.swift
//  NonReactiveMVVM
//
//  Created by Ian Keen on 20/04/2016.
//  Copyright © 2016 Mustard. All rights reserved.
//

import Foundation

enum APIError: ErrorType, CustomStringConvertible {
    case InvalidResponse
    case NotFound
    
    var description: String {
        switch self {
        case .InvalidResponse: return "Received an invalid response"
        case .NotFound: return "Requested item was not found"
        }
    }
}

class API {
    //MARK: - Private
    private let network: Network
    
    //MARK: - Lifecycle
    init(network: Network) {
        self.network = network
    }
}
