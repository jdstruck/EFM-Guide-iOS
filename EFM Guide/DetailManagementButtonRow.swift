//
//  DetailButtonRow.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/11/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DetailManagementButtonRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text(landmark.name)
            Spacer()
            landmark.image
            .resizable()
            .frame(width: 40, height: 40)
        }
    }
}

struct DetailButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
