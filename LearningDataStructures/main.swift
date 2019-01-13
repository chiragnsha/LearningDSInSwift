//
//  main.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 27/12/18.
//  Copyright © 2018 Chirag N Shah. All rights reserved.
//

import Foundation

print("Hello, World!")

simulateQueue()
simulateStack()
simulateTree()

///parsejson
/*
var jsonStringArray = """
                        [\"hel\\tlo\"]
                        """

let data = jsonStringArray.data(using: .utf8)
do {
    var x = try JSONDecoder.init().decode([String].self, from: data!)
    print(x)
} catch { (error)
    print(error.localizedDescription)
}
 */

