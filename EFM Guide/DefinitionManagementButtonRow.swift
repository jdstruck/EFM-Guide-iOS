//
//  DetailButtonRow.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/11/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionManagementButtonRow: View {
    var landmark: DefinitionObject

    var body: some View {
        HStack {
            Text("Management")
            Spacer()
            landmark.image
            .resizable()
            .frame(width: 40, height: 40)
        }
    }
}

struct DefinitionButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefinitionRow(landmark: definitionJSON[0])
            DefinitionRow(landmark: definitionJSON[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
