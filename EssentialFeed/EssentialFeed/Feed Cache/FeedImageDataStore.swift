//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 07/10/2022.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
