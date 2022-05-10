//
//  File.swift
//  
//
//  Created by Pablo Reszczynski on 20-04-22.
//

import XCTest
@testable import TopsortSDK

@available(iOS 13.0.0, *)
final class TopsortSDKTest: XCTestCase {
    func testLogImpression() async throws {
        let sdk = TopsortSDK(url: "http://localhost:8080/v1", apiKey: "693cddcd-ddd0-4f59-a659-8967120c1cd7")
        let impressions = [
            Impression(placement: Placement(
                page: "page_1"
            ))
        ]
        let result = try await sdk.logImpressions(impressions: impressions)
        print(result)
        XCTAssertNotNil(result)
    }
}
