//
// PurchaseItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PurchaseItem: Codable, JSONEncodable, Hashable {

    /** The marketplace ID of the product being purchased. */
    public var productId: String
    /** If known, the product's auction ID if the consumer clicked on a promoted link before purchasing. */
    public var auctionId: String?
    /** Count of product purchased. */
    public var quantity: Int? = 1
    /** The price of a single item in minor currency units. For example, in the US (currency code \"USD\") the unit price is specified in cents. */
    public var unitPrice: Int
    public var resolvedBidId: String?

    public init(productId: String, auctionId: String? = nil, quantity: Int? = 1, unitPrice: Int, resolvedBidId: String? = nil) {
        self.productId = productId
        self.auctionId = auctionId
        self.quantity = quantity
        self.unitPrice = unitPrice
        self.resolvedBidId = resolvedBidId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productId
        case auctionId
        case quantity
        case unitPrice
        case resolvedBidId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(productId, forKey: .productId)
        try container.encodeIfPresent(auctionId, forKey: .auctionId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encode(unitPrice, forKey: .unitPrice)
        try container.encodeIfPresent(resolvedBidId, forKey: .resolvedBidId)
    }
}

