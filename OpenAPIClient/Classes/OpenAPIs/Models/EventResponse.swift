//
// EventResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EventResponse: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var clickId: String?
    public var impressions: [ImpressionResponse]?
    public var purchaseId: String?

    public init(id: String? = nil, clickId: String? = nil, impressions: [ImpressionResponse]? = nil, purchaseId: String? = nil) {
        self.id = id
        self.clickId = clickId
        self.impressions = impressions
        self.purchaseId = purchaseId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case clickId
        case impressions
        case purchaseId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(clickId, forKey: .clickId)
        try container.encodeIfPresent(impressions, forKey: .impressions)
        try container.encodeIfPresent(purchaseId, forKey: .purchaseId)
    }
}

