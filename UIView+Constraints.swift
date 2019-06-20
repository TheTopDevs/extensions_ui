//
//  UIView+Constraints.swift
//
//  Copyright © 2017. All rights reserved.
//

import Foundation
import UIKit

/**
 Extension for UIView
 */
extension UIView {
    
    /**
     Adds specified view as subview of current view. Setup constraints of subview to make alignment all edges to be the same as of current view
     - Parameters:
         - view: view to add
     */
    func addFullsizeSubview(_ view: UIView) {
        let container = self
        container.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        container.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options:[], metrics:nil, views: bindings))
        container.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options:[], metrics:nil, views: bindings))
    }
    
    /**
     Removes specified view as subview of current view.
     - Parameters:
         - view: view to remove
     */
    func removeFullsizeSubview(_ view: UIView) {
        view.removeFromSuperview()
    }
}
