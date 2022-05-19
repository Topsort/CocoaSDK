//
//  File.swift
//
//
//  Created by Pablo Reszczynski on 20-04-22.
//

@testable import TopsortSDK
import XCTest

@available(iOS 13.0.0, *)
final class TopsortSDKTest: XCTestCase {
    func testLogImpression() async throws {
        let sdk = TopsortSDK(url: "http://localhost:8080/v1", apiKey: "693cddcd-ddd0-4f59-a659-8967120c1cd7")
        let impressions = [
            Impression(),
        ]
        let result = try await sdk.logImpressionsAsync(impressions: impressions)
        print(result)
        XCTAssertNotNil(result)
    }
}
