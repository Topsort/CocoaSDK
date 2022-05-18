//
//  TopsortSDK.swift
//  
//
//
//

import Foundation

/// Topsort iOS SDK
///
/// Handles sending metrics to Topsort Analytics.
///
/// - copyright: 2022 - Topsort
public final class TopsortSDK {
    
    /// A completion function for handling EventResponse
    public typealias Completion = ((_ data: EventResponse?, _ error: Error?) -> Void)
    
    private var url: String
    private var apiKey: String
    private var eventsApi: EventsAPI
    
    /// - Parameter url: Your marketplace's auction engine endpoint
    /// - Parameter apiKey: Your marketplace API Key
    public init(url: String, apiKey: String) {
        self.url = url
        self.apiKey = apiKey
        self.eventsApi = EventsAPI(basePath: url, apiKey: apiKey)
    }
    
    /// Sends an impressions event to Topsort's API
    /// An impression is any product that has been rendered on screen.
    /// Therefore this method should be called as soon as the product is rendered on the screen.
    /// - Parameter impressions: List of impressions that have been recorded in one render.
    /// - Parameter completion: A completion function that receives the EventResponse, or an error.
    /// - Returns: A cancelable async task.
    @available(iOS, deprecated: 13.0.0, message: "Please use the new Async API")
    @discardableResult
    public func logImpressions(impressions: [Impression], completion: @escaping Completion) -> RequestTask {
        let event = ImpressionEvent(
            session: Session(sessionId: getSessionId()),
            impressions: impressions,
            occurredAt: Date()
        )
        return eventsApi.reportEvent(event: .impression(event), completion: completion)
    }
    
    /// Sends an impressions event to Topsort's API
    /// An impression is any product that has been rendered on screen.
    /// Therefore this method should be called as soon as the product is rendered on the screen.
    /// - Parameter impressions: List of impressions that have been recorded in one render.
    /// - Returns: an EventResponse
    /// - Throws:
    @available(iOS 13.0.0, *)
    @discardableResult
    public func logImpressions(impressions: [Impression]) async throws -> EventResponse {
        let event = ImpressionEvent(
            session: Session(sessionId: getSessionId()),
            impressions: impressions,
            occurredAt: Date()
        )
        return try await eventsApi.reportEventAsync(event: .impression(event))
    }
    
    /// Sends a hit event to Topsort's API
    /// A hit is any user triggered event (a tap, or a click) that the user makes on a product on your marketplace, sponsored or not.
    /// - Parameter hit: A Hit struct that contains a Session, the product ID, a placement on the App.
    /// - Parameter completion: A Completion function that receives the EventResponse, or an error.
    /// - Returns: A cancelable async task.
    @available(iOS, deprecated: 13.0.0, message: "Please use the new Async API")
    @discardableResult
    public func logHit(hit: HitEvent, completion: @escaping Completion) -> RequestTask {
        return eventsApi.reportEvent(event: .hit(hit), completion: completion)
    }
    
    /// Sends a hit event to Topsort's API
    /// A hit is any user triggered event (a tap, or a click) that the user makes on a product on your marketplace, sponsored or not.
    /// - Parameter hit: A Hit struct that contains a Session, the product ID, a placement on the App.
    /// - Returns an EventResponse or throws.
    @available(iOS 13.0.0, *)
    @discardableResult
    public func logHit(hit: HitEvent) async throws -> EventResponse {
        return try await eventsApi.reportEventAsync(event: .hit(hit))
    }
    
    /// Sends a purchase event to Topsort's API
    /// A purchase should be generated when a user completes a transaction to buy any number of products.
    /// - Parameter purchase: A Purchase struct that contains a Session, the list product IDs.
    /// - Parameter completion: A Completion function that receives the EventResponse, or an error.
    /// - Returns: A cancelable async task.
    @available(iOS, deprecated: 13.0.0, message: "Please use the new Async API")
    @discardableResult
    public func logPurchase(purchase: PurchaseEvent, completion: @escaping Completion) -> RequestTask {
        return eventsApi.reportEvent(event: .purchase(purchase), completion: completion)
    }
    
    /// Sends a hit event to Topsort's API
    /// A hit is any user triggered event (a tap, or a click) that the user makes on a product on your marketplace, sponsored or not.
    /// - Parameter purchase: A Purchase struct that contains a Session, the list product IDs.
    /// - Returns an EventResponse or throws.
    @available(iOS 13.0.0, *)
    @discardableResult
    public func logPurchase(purchase: PurchaseEvent) async throws -> EventResponse {
        return try await eventsApi.reportEventAsync(event: .purchase(purchase))
    }
    
    /// Gets an unique session ID to be sent to Topsort API
    func getSessionId() -> String {
        return "session_id"
    }
}
