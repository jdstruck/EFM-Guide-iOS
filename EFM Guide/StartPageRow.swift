//
//  StartPageRow.swift
//  EFM
//
//  Created by Jesse Struck on 11/18/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct StartPageRow: View {
    var rowName: String
    var rowDetails: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(rowName)
                .bold()
            .font(.system(size: 20))
            Text(rowDetails)
                .font(.system(size: 16))
            Spacer()
        }
    }
}

struct StartPageRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartPageRow(rowName: "• definitions of individual EFM tracing findings and patterns with pictures\n", rowDetails: "• category I, II, III EFM tracing interpretations")
            StartPageRow(rowName: "• category I, II, III EFM tracing interpretations\n", rowDetails: "• category I, II, III EFM tracing interpretations")
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
