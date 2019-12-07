//
//  ReferencesView.swift
//  EFM
//
//  Created by Jesse Struck on 12/7/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI
let references_text = """
Practice Bulletin #106: Intrapartum Fetal Heart Rate Monitoring: Nomenclature, Interpretation, and General Management Principles. Obstetrics & Gynecology, vol. 114, no. 1, pg. 192-202, july, 2009.

Practice Bulletin #116: Management of Fetal Heart Rate Tracings. Obstetrics & Gynecology, vol. 116, no. 5, pg. 1232-1240, November, 2010.

The 2008 National Institute of Child Health and Human Development* Workshop Report on Electronic Fetal Monitoring: Update on Definitions, Interpretations, and Research Guidelines.  Macones G., et. al., Obstetrics & Gynecology 12(3) 661-666; September, 2008.  Reproduced with permission of the American College of Obstetricians and Gynecologists, all rights reserved.
* developed jointly with ACOG and the Society for Maternal-Fetal Medicine.

Intrapartum Fetal Monitoring. Bailey, RE, American Family Physician 80(12):1388-96; December 15, 2009.  Reproduced with permission of the American Academy of Family Physicians, all Rights Reserved.

Tekoa King CNM & Robert Gobbo MD generously provided digital images of EFM tracings for this project.  Thanks again!
"""
struct ReferencesView: View {
    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
//            VStack(alignment: .leading) {
//                Text(def_obj.name)
//                .font(.title)
//            }
//            .padding()
           
            VStack(alignment: .leading) {
                
                Text("References")
                    .font(.headline)
                Text(references_text)
                    .font(.body)

            }
            .padding()

            Spacer()
        }
         }
}

struct ReferencesView_Previews: PreviewProvider {
    static var previews: some View {
        ReferencesView()
    }
}
