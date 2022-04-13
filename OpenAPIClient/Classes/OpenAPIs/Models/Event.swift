//
// Event.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Event: Codable, JSONEncodable, Hashable {

    public enum EventType: String, Codable, CaseIterable {
        case impression = "Impression"
        case click = "Click"
        case purchase = "Purchase"
    }
    /** Discriminator for the type of event. */
    public var eventType: EventType
    public var session: Session

    public init(eventType: EventType, session: Session) {
        self.eventType = eventType
        self.session = session
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType
        case session
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(session, forKey: .session)
    }
}

