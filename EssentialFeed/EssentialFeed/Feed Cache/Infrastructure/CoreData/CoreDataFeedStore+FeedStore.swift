//
//  CoreDataFeedStore+FeedStore.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 05/10/2022.
//

import CoreData

extension CoreDataFeedStore: FeedStore {
    public func deleteCachedFeed() throws {
        
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {
        
    }
    
    public func retrieve() throws -> CachedFeed? {
        return nil
    }
}
