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
public struct ImpressionEvent: Codable, JSONEncodable, Hashable {

    public enum EventType: String, Codable, CaseIterable {
        case impression = "Impression"
        case click = "Click"
        case purchase = "Purchase"
    }
    /** Discriminator for the type of event. */
    public var eventType: EventType
    public var session: Session
    public var impressions: [Impression]
    /** RFC3339 formatted timestamp including UTC offset */
    public var occurredAt: Date?

    public init(eventType: EventType, session: Session, impressions: [Impression], occurredAt: Date? = nil) {
        self.eventType = eventType
        self.session = session
        self.impressions = impressions
        self.occurredAt = occurredAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType
        case session
        case impressions
        case occurredAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(session, forKey: .session)
        try container.encode(impressions, forKey: .impressions)
        try container.encodeIfPresent(occurredAt, forKey: .occurredAt)
    }
}

