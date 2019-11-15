//
//  DetailImageButtonRow.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/13/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DetailImageButtonRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text("Picture")
            Spacer()
            landmark.image
            .resizable()
            .frame(width: 40, height: 40)
        }
    }
}

struct DetailImageButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefinitionRow(landmark: landmarkData[0])
            DefinitionRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
