//
//  ManagementObject.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ManagementObject: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var details: String
    var quickPoints: String

}
