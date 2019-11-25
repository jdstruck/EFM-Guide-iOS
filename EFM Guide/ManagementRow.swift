//
//  ManagementRow.swift
//  EFM
//
//  Created by Jesse Struck on 11/18/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct ManagementRow: View {
    var mgmt_obj: ManagementObject

    var body: some View {
        HStack {
            Text(mgmt_obj.name)
            Spacer()
            mgmt_obj.image
            .resizable()
            .frame(width: 40, height: 40)
        }
    }
}

struct ManagementRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ManagementRow(mgmt_obj: managementJSON[0])
            ManagementRow(mgmt_obj: managementJSON[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
