//
//  EssentialFeedCacheIntegrationTests.swift
//  EssentialFeedCacheIntegrationTests
//
//  Created by Scott Hodson on 07/10/2022.
//

import XCTest
import EssentialFeed

class EssentialFeedCacheIntegrationTests: XCTestCase {
    
    func test_loadFeed_deliversNoItemsOnEmptyCache() {
        let feedLoader = makeFeedLoader()
        
        expect(feedLoader, toLoad: [])
    }
    
    // MARK: - Helpers
    
    private func makeFeedLoader(currentDate: Date = Date(), file: StaticString = #filePath, line: UInt = #line) -> LocalFeedLoader {
        let storeURL = testSpecificStoreURL()
        let store = try! CoreDataFeedStore(storeURL: storeURL)
        let sut = LocalFeedLoader(store: store, currentDate: { currentDate })
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return sut
    }
    
    private func expect(_ sut: LocalFeedLoader, toLoad expectedFeed: [FeedImage], file: StaticString = #filePath, line: UInt = #line) {
        do {
            let loadedFeed = try sut.load()
            XCTAssertEqual(loadedFeed, expectedFeed, file: file, line: line)
        } catch {
            XCTFail("Expected successful feed result, got \(error) instead", file: file, line: line)
        }
    }
    
    private func testSpecificStoreURL() -> URL {
        return cachesDirectory().appendingPathComponent("\(type(of: self)).store")
    }
    
    private func cachesDirectory() -> URL {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }
}
