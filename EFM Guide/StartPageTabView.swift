//
//  StartPageTabView.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/20/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct StartPageTabView: View {
    var body: some View {
        TabView {
            StartPageList()
                .tabItem {Text("Home")
            }
            ManagementList()
                .tabItem {Text("Management")
            }
            DefinitionsList()
                .tabItem {Text("Definitions")
            }
        }
    }
}

struct StartPageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            StartPageList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
