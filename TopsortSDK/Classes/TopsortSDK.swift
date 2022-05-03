//
//  TopsortSDK.swift
//  
//
//  Created by Pablo Reszczynski on 13-04-22.
//

import Foundation
#if canImport(UIKit)
import UIKit
#endif

public final class TopsortSDK {
    private var url: String
    private var apiKey: String
    private var eventsApi: EventsAPI
    
    init(url: String, apiKey: String) {
        self.url = url
        self.apiKey = apiKey
        self.eventsApi = EventsAPI(basePath: url, apiKey: apiKey)
    }
    
    @available(macOS 10.15.0, *)
    func logImpression(impressions: [Impression]) async throws -> EventResponse {
        let event = ImpressionEvent(
            session: Session(sessionId: getSessionId()),
            impressions: impressions,
            occurredAt: Date()
        )
        return try await eventsApi.reportEventAsync(event: .impression(event))
    }
    
    @available(macOS 10.15.0, *)
    func logClick(click: ClickEvent) async throws -> EventResponse {
        return try await eventsApi.reportEventAsync(event: .click(click))
    }
    
    @available(macOS 10.15.0, *)
    func logPurchase(purchase: PurchaseEvent) async throws -> EventResponse {
        return try await eventsApi.reportEventAsync(event: .purchase(purchase))
    }
    
    func getSessionId() -> String {
        return "session_id"
    }
}
