//
//  ListViewController+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 11/10/2022.
//

import UIKit
import EssentialFeediOS

extension ListViewController {
    func simulateUserInitiatedReload() {
        refreshControl?.simulatePullToRefresh()
    }
}

extension ListViewController {
    
    func simulateTapOnFeedImage(at row: Int) {
        let delegate = tableView.delegate
        let index = IndexPath(row: row, section: feedImagesSection)
        delegate?.tableView?(tableView, didSelectRowAt: index)
    }
    
    private var feedImagesSection: Int { 0 }
}
