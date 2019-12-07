//
//  AboutAppView.swift
//  EFM
//
//  Created by Jesse Struck on 12/7/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct AboutAppView: View {
    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(def_obj.name)
//                .font(.title)
//            }
//            .padding()
           
            VStack(alignment: .leading) {
                
                Text("Development of EFM guide")
                    .font(.headline)
                Text("\nWritten to put reference information about electronic fetal monitoring in the hands of clinicians, students, and residents at the point of care.\n\nContent + Design: Joshua Steinberg MD & Tekoa King CNM\nProgrammer: Jesse Struck, Binghamton University, Binghamton NY; Joshua Steinberg MD\n\nFeedback: jds.pocapps@gmail.com\nPlatform: iOS 13 and later\nVersion: 4.0 beta\nCopyright: December 2019")
                    .font(.body)

            }
            .padding()

            Spacer()
        }
         }
}

struct AboutAppView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppView()
    }
}
