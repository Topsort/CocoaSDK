//
// Winner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Winner: Codable, JSONEncodable, Hashable {

    public enum WinnerType: String, Codable, CaseIterable {
        case product = "product"
        case vendor = "vendor"
    }
    /** Where the product's bid ranked in the auction. Zero-based, so the product with rank 0 won the auction and had the highest bid. In an auction response, the winners array is sorted so rank will match the entry's index */
    public var rank: Int
    /** The marketplace's ID for the product. It will match the ID for a product in the request's products array. */
    public var productId: String
    /** The type of the winning bid, depending on the campaign. It can be product or vendor. */
    public var winnerType: WinnerType?
    /** The marketplace's ID of the winnning item, depending on the campaign. */
    public var winnerId: String?
    /** An opaque topsort ID to be used when this item is interacted with. */
    public var resolvedBidId: String?
    /** The vendor defined asset that the marketplace has to use as a banner. */
    public var assetUrl: String?

    public init(rank: Int, productId: String, winnerType: WinnerType? = nil, winnerId: String? = nil, resolvedBidId: String? = nil, assetUrl: String? = nil) {
        self.rank = rank
        self.productId = productId
        self.winnerType = winnerType
        self.winnerId = winnerId
        self.resolvedBidId = resolvedBidId
        self.assetUrl = assetUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rank
        case productId
        case winnerType
        case winnerId
        case resolvedBidId
        case assetUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rank, forKey: .rank)
        try container.encode(productId, forKey: .productId)
        try container.encodeIfPresent(winnerType, forKey: .winnerType)
        try container.encodeIfPresent(winnerId, forKey: .winnerId)
        try container.encodeIfPresent(resolvedBidId, forKey: .resolvedBidId)
        try container.encodeIfPresent(assetUrl, forKey: .assetUrl)
    }
}

