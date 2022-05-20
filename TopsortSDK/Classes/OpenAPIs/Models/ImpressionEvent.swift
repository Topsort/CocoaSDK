//
// ImpressionEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product has become visible to the consumer. In case you cannot send the impression when the product is visible, send us an impression event when the product was rendered in the HTML or if that&#39;s also not possible when your API returns the results. It is important to select the most specific event so that your vendors have more accurate CTR metrics, which allow them to better predict their campaigns. */
public struct ImpressionEvent: Encodable, JSONEncodable, Hashable {
    public var impressions: [Impression]
    /** RFC3339 formatted timestamp including UTC offset */
    public var occurredAt: Date?

    public init(impressions: [Impression], occurredAt: Date? = nil) {
        self.impressions = impressions
        self.occurredAt = occurredAt
    }

    private enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType
        case session
        case impressions
        case occurredAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        let session = Session(sessionId: getSessionId())
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode("Impression", forKey: .eventType)
        try container.encode(session, forKey: .session)
        try container.encode(impressions, forKey: .impressions)
        try container.encodeIfPresent(occurredAt, forKey: .occurredAt)
    }
}
