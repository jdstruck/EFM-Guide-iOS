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
        VStack {
            Text("Choose term to review definition(s):")
            .multilineTextAlignment(.center)
            List(definitionJSON) { landmark in
                    NavigationLink(destination: DefinitionView(definition_obj: landmark)) {
                        DefinitionRow(definition_obj: landmark)
                    }
                }
                .navigationBarTitle(Text("Definitions"))
            .navigationViewStyle(StackNavigationViewStyle())
        }
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
