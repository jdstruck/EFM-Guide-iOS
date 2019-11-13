//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        NavigationView {
        VStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(landmark.name)
                .font(.title)
            }
            .padding()
            VStack {
                
                    HStack(alignment: .top) {
                        NavigationLink(destination: ManagementList()) {
                            DetailManagementButtonRow(landmark: landmark)
                        } .padding()
                        NavigationLink(destination: CircleImage(image: landmark.image)) {
                            DetailImageButtonRow(landmark: landmark)
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
    }
         }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
