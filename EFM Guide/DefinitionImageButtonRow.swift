//
//  DetailImageButtonRow.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/13/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionImageButtonRow: View {
    var definition_obj: DefinitionObject

    var body: some View {
        HStack {
            Text("Picture")
//            definition_obj.image
//            .resizable()
//            .frame(width: 40, height: 40)
        }
    }
}

struct DefinitionImageButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefinitionImageButtonRow(definition_obj: definitionJSON[0])
            DefinitionImageButtonRow(definition_obj: definitionJSON[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
