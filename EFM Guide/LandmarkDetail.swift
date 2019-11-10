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
        VStack {
//            MapView(coordinate: landmark.locationCoordinate)
//                .frame(height: 300)

//            CircleImage(image: landmark.image)
//                .offset(x: 0, y: -130)
//                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .padding()
                Text("Quick points")
                    .font(.headline)
                Text(landmark.quickPoints)
                    .font(.body)
                Text("\nDetails")
                    .font(.headline)
                Text(landmark.details)
                    .font(.body)

//                HStack(alignment: .top) {
//                    Text(landmark.park)
//                        .font(.subheadline)
//                    Spacer()
//                    Text(landmark.state)
//                        .font(.subheadline)
//                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
