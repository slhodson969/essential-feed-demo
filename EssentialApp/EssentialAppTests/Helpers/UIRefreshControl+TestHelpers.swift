//
//  UIRefreshControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 18/10/2022.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
