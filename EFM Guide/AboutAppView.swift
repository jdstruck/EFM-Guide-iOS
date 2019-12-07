//
//  AboutAppView.swift
//  EFM
//
//  Created by Jesse Struck on 12/7/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI
let about_app_text = """
Written to put reference information about electronic fetal monitoring in the hands of clinicians, students, and residents at the point of care.

Content + Design: Joshua Steinberg MD & Tekoa King CNM
Programmer: Jesse Struck, Binghamton University, Binghamton NY; Joshua Steinberg MD

Feedback: jds.pocapps@gmail.com
Platform: iOS 13 and later
Version: 4.0 beta
Copyright: December 2019
"""

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
                Text(about_app_text)
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
