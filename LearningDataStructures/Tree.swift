//
//  Tree.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 27/12/18.
//  Copyright © 2018 Chirag N Shah. All rights reserved.
//

import Foundation

class TreeNode {
    private var value: Int
    private (set) var children: [TreeNode] = [TreeNode]()
    
    init(with value: Int) {
        self.value = value
    }
    
    func addChildren(_ children: [TreeNode]) {
        self.children.append(contentsOf: children)
    }
    
    func printTree() {
        print("value : " + String.init(value))
        
        for child in children {
            child.printTree()
        }
    }
}

///learning concept of modelControllers
class TreeModelController {
    private var tree: TreeNode
    
    init(tree: TreeNode) {
        self.tree = tree
    }
    
    func addNode(_ treeNode: TreeNode) {
        self.tree.addChildren([treeNode])
    }
}

func simulateTree() {
    let treeNode = TreeNode.init(with: 5)
    
    let treeController = TreeModelController.init(tree: treeNode)
    
    
    let a = TreeNode.init(with: -1)
    
    
    let aa = TreeNode.init(with: 1)
    
    let aaa = TreeNode.init(with: 1)
    let aab = TreeNode.init(with: 2)
    let aac = TreeNode.init(with: 3)
    
    aa.addChildren([aaa, aab, aac])
    
    let ab = TreeNode.init(with: 9)
    
    let aba = TreeNode.init(with: 7)
    let abb = TreeNode.init(with: 8)
    let abc = TreeNode.init(with: 9)
    
    ab.addChildren([aba, abb, abc])
    
    a.addChildren([aa, ab])
    
    treeController.addNode(a)
    
    //        treeController.printTree()
    
//    print(treeNode)
    treeNode.printTree()
}

