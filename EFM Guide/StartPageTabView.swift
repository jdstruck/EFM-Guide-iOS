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
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            } .tag(0)
            DisclaimerView()
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Disclaimer")
            } .tag(1)
            AboutAppView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About App")
            } .tag(2)
            ReferencesView()
                .tabItem {
                    Image(systemName: "book")
                    Text("References")
            } .tag(3)
        }
    }
}

struct StartPageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max", "iPhone SE"], id: \.self) { deviceName in
            StartPageTabView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
