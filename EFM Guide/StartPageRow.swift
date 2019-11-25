//
//  StartPageRow.swift
//  EFM
//
//  Created by Jesse Struck on 11/18/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct StartPageRow: View {
    //var def_obj: DefinitionObject
    var rowName: String

    var body: some View {
        HStack {
            Text(rowName)
            Spacer()
            //def_obj.image
            //.resizable()
            //.frame(width: 40, height: 40)
        }
    }
}

struct StartPageRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DefinitionRow(landmark: definitionJSON[0])
            DefinitionRow(landmark: definitionJSON[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
