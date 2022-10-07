//
//  LocalFeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 07/10/2022.
//

import Foundation

public final class LocalFeedImageDataLoader {
    private let store: FeedImageDataStore
    
    public init(store: FeedImageDataStore) {
        self.store = store
    }
}
