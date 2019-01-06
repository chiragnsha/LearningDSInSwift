//
//  queue.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 05/01/19.
//  Copyright © 2019 Chirag N Shah. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node<T>? = nil
    
    init(value: T) {
        self.value = value
    }
}

///lnked list impl
class queue<T> {
    private var front: Node<T>? = nil
    
    private var rear: Node<T>? = nil
    
    func enqueue(_ element: T) {
        let newNode = Node.init(value: element)
        
        if(rear == nil) {
        	front = newNode
            rear = newNode
            
            return
        }
        
        rear?.next = newNode
        rear = newNode
        
    }
    
    func dequeue() -> T? {
        guard let front = front else {
            return nil
        }
        
        let frontValue = front.value
        self.front = front.next
        
        
        return frontValue
    }
}


extension queue: CustomStringConvertible {
    var description: String {
        var returnString = ""
        
        var tempNode = front
        
        while let node = tempNode {
            returnString += String.init(describing: node.value)
            tempNode = node.next
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
