//
//  UIView+XIB.swift
//
//  Copyright © 2017.All rights reserved.
//

import Foundation
import UIKit

/**
 Extension for UIView
 */
extension UIView {
    
    /**
     Returns the view from interface builder xib file
     - Parameters:
        - owner: xib file owner
     - Returns: UIView object
     */
    class func viewFromXIB(owner: Any? = nil) -> UIView {
        let name = String.init(describing: self)
        let views = Bundle.main.loadNibNamed(name, owner: owner, options: nil)
        return views!.first as! UIView
    }
    
}
