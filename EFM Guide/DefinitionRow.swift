//
//  LandmarkRow.swift
//  EFM
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionRow: View {
    var definition_obj: DefinitionObject

    var body: some View {
        HStack {
            Text(definition_obj.name)
            Spacer()
            definition_obj.image
            .resizable()
            .frame(width: 40, height: 40)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefinitionRow(definition_obj: definitionJSON[0])
            DefinitionRow(definition_obj: definitionJSON[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
