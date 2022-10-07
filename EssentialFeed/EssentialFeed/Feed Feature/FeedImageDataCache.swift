//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 07/10/2022.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
