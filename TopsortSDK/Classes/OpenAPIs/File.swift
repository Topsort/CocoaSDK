//
//  File.swift
//
//
//  Created by Pablo Reszczynski on 19-05-22.
//

import UIKit

/// Gets an unique session ID to be sent to Topsort API
internal func getSessionId() -> String {
    return UIDevice.current.identifierForVendor!.uuidString
}
