//
// TopsortError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TopsortError: Codable, JSONEncodable, Hashable {

    public enum ErrCode: String, Codable, CaseIterable {
        case badRequest = "bad_request"
        case internalServerError = "internal_server_error"
        case invalidApiKey = "invalid_api_key"
        case invalidAuctionId = "invalid_auction_id"
        case invalidEventType = "invalid_event_type"
        case invalidPromotionType = "invalid_promotion_type"
        case invalidSession = "invalid_session"
        case missingPlacement = "missing_placement"
        case missingProductId = "missing_product_id"
        case missingPromotionType = "missing_promotion_type"
        case missingPurchasedAt = "missing_purchased_at"
        case missingSession = "missing_session"
        case missingSlots = "missing_slots"
        case noProducts = "no_products"
        case noPurchaseItems = "no_purchase_items"
        case tooFewImpressions = "too_few_impressions"
        case tooFewSlots = "too_few_slots"
    }
    public enum DocUrl: String, Codable, CaseIterable {
        case httpsSlashSlashTopsortApiPeriodRedocPeriodLy = "https://topsort-api.redoc.ly"
    }
    public var errCode: ErrCode
    public var docUrl: DocUrl?
    public var message: String?

    public init(errCode: ErrCode, docUrl: DocUrl? = nil, message: String? = nil) {
        self.errCode = errCode
        self.docUrl = docUrl
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errCode
        case docUrl
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(errCode, forKey: .errCode)
        try container.encodeIfPresent(docUrl, forKey: .docUrl)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
