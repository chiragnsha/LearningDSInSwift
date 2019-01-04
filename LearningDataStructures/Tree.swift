//
//  Tree.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 27/12/18.
//  Copyright © 2018 Chirag N Shah. All rights reserved.
//

import Foundation

class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(with nodeValue: Int, with rightNode:TreeNode?) {
        value = nodeValue
    }
}

struct Tree {
    func test() {
        let treeNode = TreeNode.init(with: 5, with: nil)
    }
}
