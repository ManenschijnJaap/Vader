//
//  Result.swift
//  Pods-Vader_Example
//
//  Created by James Rochabrun on 11/25/18.
//

import Foundation

public enum Result<T, U> where U: Error  {
    case success(T)
    case failure(U)
}
