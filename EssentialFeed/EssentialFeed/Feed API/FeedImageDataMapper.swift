//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Scott Hodson on 04/10/2022.
//

import Foundation

public final class FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }
        
        return Data()
    }
}
