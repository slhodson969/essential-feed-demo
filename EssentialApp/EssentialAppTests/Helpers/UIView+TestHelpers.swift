//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 18/10/2022.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
