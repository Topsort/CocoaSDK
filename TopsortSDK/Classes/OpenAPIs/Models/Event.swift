//
// Event.swift
//

import Foundation

public enum Event {
    case click(ClickEvent)
    case impression(ImpressionEvent)
    case purchase(PurchaseEvent)
}
