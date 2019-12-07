//
//  DisclaimerView.swift
//  EFM
//
//  Created by Jesse Struck on 12/7/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DisclaimerView: View {
    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(def_obj.name)
//                .font(.title)
//            }
//            .padding()
           
            VStack(alignment: .leading) {
                
                Text("Disclaimer")
                    .font(.headline)
                Text("\nDear Colleague,\n\nThis guide provides NICHD Sept. 2008 definitions for FHR tracing characteristics and interpretations plus management for intrapartum FHR patterns from ACORG's Nov. 2010 Practice Bulletin.\n\nBut this guide does NOT...\n- advise which patients to monitor with which method (EFM vs. intermittent ausculation, and\n- offer judgement or suggfestions for management aside from ACOG's explicit recommendations; this guide tries to faithfully aggregate information from major authorities and does not introduce or substitute the app author's judgement.\n\nYou, the clinician, still have to rely upon your knowledge of the patient, your understanding of labor management, your institution's resources, and all other usual sources of guidance to decide when and how to aply EFM while managing labor. Those sources might include your local standards of care, your local colleagues and consultants, and guidance from ACOG, other organization, and the medical literature.")
                    .font(.body)

            }
            .padding()

            Spacer()
        }
         }
}

struct Disclaimer_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
