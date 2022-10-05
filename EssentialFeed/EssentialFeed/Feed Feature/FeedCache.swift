//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 05/10/2022.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
