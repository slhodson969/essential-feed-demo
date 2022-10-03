//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 03/10/2022.
//

import Foundation

public final class FeedItemsMapper {
    private struct Root: Decodable {}
    
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.isOK, let _ = try? JSONDecoder().decode(Root.self, from: data) else {
            throw Error.invalidData
        }
        
        return []
    }
}
