//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionView: View {
    var landmark: Landmark

    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(landmark.name)
                .font(.title)
            }
            .padding()
            VStack {
                
                    HStack(alignment: .top) {
                        NavigationLink(destination: ManagementList()) {
                            DefinitionManagementButtonRow(landmark: landmark)
                        } .padding()
                        NavigationLink(destination: DetailPictureView(image: landmark.image)) {
                            DefinitionImageButtonRow(landmark: landmark)
                        } .padding()
                    }
                }
           
            VStack(alignment: .leading) {
                
                    //.padding()
                Text("Quick points")
                    .font(.headline)
                Text(landmark.quickPoints)
                    .font(.body)
                Text("\nDetails")
                    .font(.headline)
                Text(landmark.details)
                    .font(.body)

            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    //}
         }
}

struct DefinitionView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionView(landmark: landmarkData[0])
    }
}
