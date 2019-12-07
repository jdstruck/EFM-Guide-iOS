//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct ManagementView: View {
    var mgmt_obj: ManagementObject

    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(definitionobj.name)
//                .font(.title)
//            }
//            .padding()
//            VStack {
//
//                    HStack(alignment: .top) {
//                        NavigationLink(destination: ManagementList()) {
//                            DefinitionManagementButtonRow(definition_obj: mgmt_obj)
//                        } .padding()
//                        NavigationLink(destination: DetailPictureView(image: mgmt_obj.image)) {
//                            DefinitionImageButtonRow(definition_obj: mgmt_obj)
//                        } .padding()
//                    }
//                }
           
            VStack(alignment: .leading) {
                
                    //.padding()
                Text("Meaning")
                    .font(.headline)
                Text(mgmt_obj.meaning)
                    .font(.body)
                Text("\nManagement")
                    .font(.headline)
                Text(mgmt_obj.management)
                    .font(.body)

            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: mgmt_obj.name), displayMode: .inline)
    //}
         }
}

struct ManagementView_Previews: PreviewProvider {
    static var previews: some View {
        ManagementView(mgmt_obj: managementJSON[1])
    }
}
