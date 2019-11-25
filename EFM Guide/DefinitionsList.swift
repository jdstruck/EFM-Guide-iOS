//
//  LandmarkList.swift
//  EFM
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DefinitionsList: View {
    var body: some View {
        //NavigationView {
            List(definitionJSON) { landmark in
                NavigationLink(destination: DefinitionView(definitionobj: landmark)) {
                    DefinitionRow(landmark: landmark)
                }
            }
            //.navigationBarHidden(true)
            .navigationBarTitle(Text("Definitions"))
            //.navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
        //}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            DefinitionsList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
