//
//  UIButton+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 18/10/2022.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
