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
        NavigationView {
            //List(definitionJSON) { def_obj in
            List {
                Section() {
                        NavigationLink(destination: DefinitionsList()) {
                            StartPageRow(rowName: "Definitions of Tracing Findings",
                                         rowDetails: "• definitions of individual EFM tracing findings and patterns with pictures")
                    }
                }.padding()
                Section() {
                        NavigationLink(destination: DefinitionsList()) {
                            StartPageRow(rowName: "Tracing Interpretations",
                                         rowDetails: "• category I, II, III EFM tracing interpretations")
                            }
                }.padding()
                Section() {
                        NavigationLink(destination: ManagementList()) {
                            StartPageRow(rowName: "Tracing Intrapartum Management",
                                         rowDetails: "• suggested clinical management responses of tracing findings and interpretations")
                    }
                }.padding()
                Section() {
                        NavigationLink(destination: SystematicEvalView()) {
                            StartPageRow(rowName: "Systematic Tracing Evaluation",
                                         rowDetails: "• systematic approach to EFM tracing evaluation")
                    }
                }.padding()
            }
            .navigationBarTitle(Text("EFM Guide"))
            .navigationViewStyle(StackNavigationViewStyle())
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
