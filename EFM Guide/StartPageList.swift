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
                List {
                    Section(header: Text("Definitions of Tracing Findings")) {
                            NavigationLink(destination: DefinitionsList()) {
                                StartPageRow(rowName: "• definitions of individual EFM tracing findings and patterns with pictures")
                        }
                    }
                    Section(header: Text("Tracing Interpretations")) {
                            NavigationLink(destination: DefinitionsList()) {
                                StartPageRow(rowName: "• category I, II, III EFM tracing interpretations")
                        }
                    }
                    Section(header: Text("Tracing Intrapartum Management")) {
                            NavigationLink(destination: DefinitionsList()) {
                                StartPageRow(rowName: "• suggested clinical management responses of tracing findings and interpretations")
                        }
                    }
                    Section(header: Text("Systematic Tracing Evaluation")) {
                            NavigationLink(destination: DefinitionsList()) {
                                StartPageRow(rowName: "• systematic approach to EFM tracing evaluation")
                        }
                    }
                }
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
