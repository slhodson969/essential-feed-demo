//
//  ManagedCache.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 05/10/2022.
//

import CoreData

@objc(ManagedCache)
class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Date
    @NSManaged var feed: NSOrderedSet
}
