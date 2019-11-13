//
//  ManagementList.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/13/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct ManagementList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("EFM Guide"))
        }
    }
}

struct ManagementList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
