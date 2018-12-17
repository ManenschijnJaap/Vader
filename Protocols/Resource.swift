//
//  Resource.swift
//  Pods-Vader_Example
//
//  Created by James Rochabrun on 11/25/18.
//

import Foundation

public struct Resources<T: Decodable>: Resource {
    
    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [T]?
}


public protocol Resource: Decodable {
    
    associatedtype T = Decodable
    var count: Int? { get }
    var next: String? { get }
    var previous: String? { get }
    var results: [T]? { get }
}
