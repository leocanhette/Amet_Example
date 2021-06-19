//
//  UIView+Constraints.swift
//  Amet_Example
//
//  Created by Leo Canhette on 19/06/21.
//

import UIKit

extension UIView {
    func addSubview<T: UIView>(_ view: T, constraints: [NSLayoutConstraint]) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
    }
}
