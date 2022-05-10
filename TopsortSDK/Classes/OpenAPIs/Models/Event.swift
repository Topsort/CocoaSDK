//
// Event.swift
//

import Foundation

public enum Event {
    case hit(HitEvent)
    case impression(ImpressionEvent)
    case purchase(PurchaseEvent)
}
