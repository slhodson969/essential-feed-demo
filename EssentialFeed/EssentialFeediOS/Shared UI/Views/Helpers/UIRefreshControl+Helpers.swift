//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Scott Hodson on 11/10/2022.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
