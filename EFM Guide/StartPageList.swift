//
//  StartPageList.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/18/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct StartPageList: View {
    var body: some View {
        TabView {
            NavigationView {
                //List(landmarkData) { landmark in
                    NavigationLink(destination: DefinitionsList()) {
                        StartPageRow(rowName: "Definitions")
                    }
                //}
                .navigationBarTitle(Text("EFM Guide"))
                .navigationViewStyle(StackNavigationViewStyle())


            }
        }
    }
}

struct StartPageList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            StartPageList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
