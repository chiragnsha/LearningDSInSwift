//
//  stack.swift
//  LearningDataStructures
//
//  Created by Chirag N Shah on 04/01/19.
//  Copyright © 2019 Chirag N Shah. All rights reserved.
//

import Foundation

struct stack<T> {
    
    private var array = [T]()
    
    var isEmpty: Bool {
        get {
            return array.isEmpty
        }
    }
    
    var count: Int {
        get {
            return array.count
        }
    }
    
    func top() -> T? {
        return array.last
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T {
        return array.remove(at: array.count)
    }
    
}

func simulateStack() {
    var myStack = stack<Int>()
    
    myStack.push(12)
    myStack.push(13)
    myStack.push(14)
    myStack.push(15)
    
    
    ///checking and leraning iterator
    
    var anotherStack = stack<Int>()
    
    anotherStack.push(2)
    anotherStack.push(3)
    anotherStack.push(4)
    anotherStack.push(5)
    
    let someStakContainer = someArrayContainer.init()
    someStakContainer.myArray?.append(myStack)
    someStakContainer.myArray?.append(anotherStack)
    
    
//    for stack in someStakContainer {
//        
//        let x = stack
//        
//        print(x)
//    }
    
    
    
}

///learning iterator

class someArrayContainer {
    ///array of integer stacks
    var myArray: [stack<Int>]?
    
    init() {
        myArray = [stack<Int>]()
    }
    
}


extension someArrayContainer: Sequence {
    func makeIterator() -> someArrayContainer {
        return self
    }
}

extension someArrayContainer: IteratorProtocol {
    typealias Element = stack<Int>

    func next() -> stack<Int>? {
        
        return myArray?[0]
    }
}

//extension stack: Sequence {
//    public func makeIterator1() -> AnyIterator<T> {
//        var curr = self
//        return AnyIterator {
//            return curr.pop()
//        }
//    }
//
//    func makeIterator() -> stack<T>.Iterator {
//        return stack<T>.Iterator.in
//    }
//}
