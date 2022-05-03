//
//  File.swift
//  
//
//  Created by Pablo Reszczynski on 13-04-22.
//

import Foundation

public enum Slots: Codable, JSONEncodable, Hashable {
    case sponsoredListings(AuctionSlotsListings)
    case bannerAds(BannersSlots)
}
