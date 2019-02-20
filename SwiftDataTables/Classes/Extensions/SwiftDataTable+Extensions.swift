//
//  SwiftDataTable+Extensions.swift
//  SwiftDataTables
//
//  Created by Pavan Kataria on 24/02/2017.
//  Copyright © 2017 Pavan Kataria. All rights reserved.
//

import Foundation
import UIKit

public extension IndexPath {
    /// An index number for single matrix indexPath
    var index: Int {
        return self[0]
    }
}
//public extension Collection where Self.Index == Int {
extension Collection where Indices.Iterator.Element == Index {

    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension UIScrollView {
    /// Sets content offset to the top.
    func resetScrollPositionToTop() {
        self.contentOffset = CGPoint(x: -contentInset.left, y: -contentInset.top)
    }
}

extension UIColor {
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }

    static let headerTitleColor = UIColor.rgb(32, 83, 163)
}
