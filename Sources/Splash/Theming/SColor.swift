/**
 *  Splash
 *  Copyright (c) John Sundell 2018
 *  MIT license - see LICENSE.md
 */

#if os(iOS) || os(visionOS)
import UIKit
public typealias SColor = UIColor
#elseif os(macOS)
import Cocoa
public typealias SColor = NSColor
#endif

#if !os(Linux)
internal extension SColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
#endif
