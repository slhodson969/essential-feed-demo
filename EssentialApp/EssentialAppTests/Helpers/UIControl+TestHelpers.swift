//
//  UIControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 18/10/2022.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
