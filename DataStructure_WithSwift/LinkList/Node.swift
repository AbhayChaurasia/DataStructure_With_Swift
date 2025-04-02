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

