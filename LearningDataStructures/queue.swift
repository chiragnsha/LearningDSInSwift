//
//  queue.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 05/01/19.
//  Copyright © 2019 Chirag N Shah. All rights reserved.
//

import Foundation

class queue<T> {
    
    class Node<T> {
        var value: T
        var next: Node<T>? = nil
        
        init(value: T) {
            self.value = value
        }
    }
    
    private var head: Node<T>? = nil
    
    private var tail: Node<T>? {
        get {
            var tailNode = head
            
            while tailNode != nil {
                tailNode = tailNode?.next
            }
            
            return tailNode
        }
    }
    
    func enqueue(_ element: T) {
        let newNode = Node.init(value: element)
        
        newNode.next = head
        head = newNode
        
    }
    
    func dequeue() -> T? {
        guard let tail = tail else {
            return nil
        }
        
        let tailValue = tail.value
        //remove tail
        
        return tailValue
    }
}


extension queue: CustomStringConvertible {
    var description: String {
        var returnString = ""
        
        var node = head
        
        while node != nil {
            returnString += String.init(describing: node!.value)
            
            node = node?.next
        }
        
        return returnString
    }
}
func simulateQueue() {
    let intQueue = queue<Int>()
    
    intQueue.enqueue(4)
    intQueue.enqueue(5)
    intQueue.enqueue(6)
    intQueue.enqueue(7)
    
    intQueue.dequeue()
    
    print(intQueue)
}
