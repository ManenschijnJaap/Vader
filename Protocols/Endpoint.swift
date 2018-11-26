//
//  Endpoint.swift
//  Pods-Vader_Example
//
//  Created by James Rochabrun on 11/25/18.
//

import Foundation

//MARK: Required variables for protocol creation of endpoint
protocol Endpoint {
    
    var base:  String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.queryItems = queryItems
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url! //want to crash if no information is complete
        return URLRequest(url: url)
    }
}
