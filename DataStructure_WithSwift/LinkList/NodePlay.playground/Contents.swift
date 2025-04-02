import UIKit


var greeting = "Hello, playground"

//
//  Node.swift
//  DataStructure_WithSwift
//
//  Created by Abhay Chaurasia on 02/04/25.
//

import Foundation

public class Node<Value> {

  public var value: Value
  public var next: Node?

  public init(value: Value, next: Node? = nil) {
    self.value = value
    self.next = next
  }
}

extension Node: CustomStringConvertible {

  public var description: String {
    guard let next = next else {
      return "\(value)"
    }
    return "\(value) -> " + String(describing: next) + " "
  }
}


   let node1 = Node(value: 1)
  let node2 = Node(value: 2)
  let node3 = Node(value: 3)

  node1.next = node2
  node2.next = node3

  print(node1)

 
public struct LinkList<value> {
    public var head : Node<value>?
    public var tail : Node<value>?
    public init() {}
    public var isEmpty : Bool {
         head == nil
    }
    
}

extension LinkList : CustomStringConvertible {
    
    public var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
public mutating func push(_ value: valu) {
      head = Node(value: value, next: head)
      if tail == nil {
        tail = head
      }
    }

 }

var list = LinkList<Int>
list.push
