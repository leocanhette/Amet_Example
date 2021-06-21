//
//  Reusable.swift
//  Amet_Example
//
//  Created by Leo Canhette on 20/06/21.
//

protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
