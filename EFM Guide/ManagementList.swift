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
        //NavigationView {
            List(managementJSON) { mgmt_obj in
                NavigationLink(destination: ManagementView(mgmt_obj: mgmt_obj)) {
                    ManagementRow(mgmt_obj: mgmt_obj)
                }
            }
            .navigationBarTitle(Text("Management"))
        //}
    }
}

struct ManagementList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            DefinitionsList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
