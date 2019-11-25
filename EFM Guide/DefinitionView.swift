//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionView: View {
    var definitionobj: DefinitionObject

    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(definitionobj.name)
//                .font(.title)
//            }
//            .padding()
            VStack {
                
                    HStack(alignment: .top) {
                        NavigationLink(destination: ManagementList()) {
                            DefinitionManagementButtonRow(landmark: definitionobj)
                        } .padding()
                        NavigationLink(destination: DetailPictureView(image: definitionobj.image)) {
                            DefinitionImageButtonRow(landmark: definitionobj)
                        } .padding()
                    }
                }
           
            VStack(alignment: .leading) {
                
                    //.padding()
                Text("Quick points")
                    .font(.headline)
                Text(definitionobj.quickPoints)
                    .font(.body)
                Text("\nDetails")
                    .font(.headline)
                Text(definitionobj.details)
                    .font(.body)

            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: definitionobj.name), displayMode: .inline)
    //}
         }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionView(definitionobj: definitionJSON[0])
    }
}
