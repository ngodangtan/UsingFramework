//
//  ViewController.swift
//  UsingFramework
//
//  Created by Ngo Dang tan on 9/4/20.
//  Copyright © 2020 Ngo Dang tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        let text = "MMMM@gmail..com"

        print(text.isValidEmail)
        
        // MARK: - Test Local Settings
        let age = 25
        age.store(key: "age")
        print(Int(key: "age")) // Optional(25)
        print(Float(key: "age")) // Optional(25.0)
        print(String(key: "age")) // Optional("25")
        print(String(key: "age1")) // nil
        let dict: [String: Any] = [
          "name": "John",
          "surname": "Doe",
          "occupation": "Swift developer",
          "experienceYears": 5,
          "age": 32
        ]
        dict.store(key: "employee")
        print(Dictionary(key: "employee"))
    }


}

