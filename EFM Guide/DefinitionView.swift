//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionView: View {
    var def_obj: DefinitionObject

    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(def_obj.name)
//                .font(.title)
//            }
//            .padding()
            VStack {
                
                    HStack(alignment: .top) {
                        NavigationLink(destination: ManagementList()) {
                            DefinitionManagementButtonRow(landmark: def_obj)
                        } .padding()
                        NavigationLink(destination: DetailPictureView(image: def_obj.image)) {
                            DefinitionImageButtonRow(landmark: def_obj)
                        } .padding()
                    }
                }
           
            VStack(alignment: .leading) {
                
                    //.padding()
                Text("Quick points")
                    .font(.headline)
                Text(def_obj.quickPoints)
                    .font(.body)
                Text("\nDetails")
                    .font(.headline)
                Text(def_obj.details)
                    .font(.body)

            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: def_obj.name), displayMode: .inline)
    //}
         }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionView(def_obj: definitionJSON[0])
    }
}
