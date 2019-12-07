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
            //Text("First View")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            } .tag(0)
            //ManagementList()
            Text("Second View")
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Disclaimer")
            } .tag(1)
            //DefinitionsList()
            Text("Third View")
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About App")
            } .tag(2)
            
            Text("Fourth View")
                .tabItem {
                    Image(systemName: "book")
                    Text("References")
            } .tag(2)
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
