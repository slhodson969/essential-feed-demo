//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Scott Hodson on 11/10/2022.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

var feedTitle: String {
    FeedPresenter.title
}

private class DummyView: ResourceView {
    func display(_ viewModel: Any) {}
}

var loadError: String {
    LoadResourcePresenter<Any, DummyView>.loadError
}
