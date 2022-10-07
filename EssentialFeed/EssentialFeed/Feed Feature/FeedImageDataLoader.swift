//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 07/10/2022.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
