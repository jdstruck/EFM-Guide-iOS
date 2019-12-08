//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionView: View {
    var definition_obj: DefinitionObject

    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment:.center) {
                
                HStack(alignment: .center, spacing: 100) {
                        NavigationLink(destination: ManagementList()) {
                            DefinitionManagementButtonRow(definition_obj: definition_obj)
                        } .padding()
                        NavigationLink(destination: DetailPictureView(image: definition_obj.image)) {
                            DefinitionImageButtonRow(definition_obj: definition_obj)
                        } .padding()
                    }
                }
           
            VStack(alignment: .leading) {
                Text("Quick points")
                    .font(.headline)
                Text(definition_obj.quickPoints)
                    .font(.body)
                Text("\nDetails")
                    .font(.headline)
                Text(definition_obj.details)
                    .font(.body)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: definition_obj.name), displayMode: .inline)
         }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionView(definition_obj: definitionJSON[0])
    }
}
