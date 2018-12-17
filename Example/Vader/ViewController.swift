//
//  ViewController.swift
//  Vader
//
//  Created by jamesrochabrun@gmail.com on 11/25/2018.
//  Copyright (c) 2018 jamesrochabrun@gmail.com. All rights reserved.
//

import UIKit
import Vader

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Resources can be of any type for example:
         - People
         - Film
         - Starship..
         Get a feed of Resources with this function.
         */
 
        Vader().get(Resources<People>.self) {
            self.handleResult($0)
        }

        /*
         Search a type by ID for example ID 1 = "Luke Skywalker"
         */
        Vader().search(People.self, withID: "1") {
            self.handleResult($0)
        }
        
        /*
         Search a type by a query for example ID 1 = "Luke Skywalker"
         */
        Vader().search(Resources<People>.self, query: "r2") {
            self.handleResult($0)
        }
    }
    
    /*
     Generic method to handle examples.
     */
    private func handleResult<T>(_ result: Result<T, APIError>) {
        switch result {
        case .success(let value): dump(value)
        case .failure(let err): print(err.customDescription)
        }
    }
}

