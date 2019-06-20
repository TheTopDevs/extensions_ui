//
//  UIDevice+ScreenType.swift
//
//  Copyright © 2017. All rights reserved.
//

import Foundation
import UIKit

/**
 Extension to get default device screen sizes/types
 */
extension UIDevice {
    
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhones_6_6s_7_8
        case iPhones_6Plus_6sPlus_7sPlus_8sPlus
        case iPhoneX
        case unknown
    }
    
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
    var iPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    var screenType: ScreenType {
        guard iPhone else { return .unknown }
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhones_6_6s_7_8
        case 1920, 2208:
            return .iPhones_6Plus_6sPlus_7sPlus_8sPlus
        case 2436:
            return .iPhoneX
        default:
            return .unknown
        }
    }
    
}
