//
// ImpressionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/// Topsort  API response for a single ``ImpressionEvent``.
public struct ImpressionResponse: Codable, JSONEncodable, Hashable {
    public var id: String?
    public var impressionId: String?

    public init(id: String? = nil, impressionId: String? = nil) {
        self.id = id
        self.impressionId = impressionId
    }

    private enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case impressionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(impressionId, forKey: .impressionId)
    }
}
