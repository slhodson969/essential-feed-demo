//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 11/10/2022.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
