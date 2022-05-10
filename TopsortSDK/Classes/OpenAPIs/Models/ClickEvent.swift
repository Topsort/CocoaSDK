//
// ClickEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ClickEvents are sent to Topsort when the consumer has clicked on an impression. Topsort charges the vendor and pays the marketplace for clicks on impressions in promoted placements on the e-commerce site. */
public struct HitEvent: Encodable, JSONEncodable, Hashable {

    public var session: Session
    public var placement: Placement
    /** The product that was clicked. */
    public var productId: String?
    /** Required for promoted products. Must be the ID for the auction the product won. */
    public var auctionId: String?
    /** The marketplace's unique ID for the click. */
    public var id: String?
    /** RFC3339 formatted timestamp including UTC offset */
    public var occurredAt: Date?
    public var resolvedBidId: String?

    public init(session: Session, placement: Placement, productId: String? = nil, auctionId: String? = nil, id: String? = nil, occurredAt: Date? = nil, resolvedBidId: String? = nil) {
        self.session = session
        self.placement = placement
        self.productId = productId
        self.auctionId = auctionId
        self.id = id
        self.occurredAt = occurredAt
        self.resolvedBidId = resolvedBidId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType
        case session
        case placement
        case productId
        case auctionId
        case id
        case occurredAt
        case resolvedBidId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode("Click", forKey: .eventType)
        try container.encode(session, forKey: .session)
        try container.encode(placement, forKey: .placement)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(auctionId, forKey: .auctionId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(occurredAt, forKey: .occurredAt)
        try container.encodeIfPresent(resolvedBidId, forKey: .resolvedBidId)
    }
}

