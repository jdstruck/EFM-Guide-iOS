//
//  LandmarkDetail.swift
//  EFM
//
//  Created by Jesse Struck on 11/8/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct SystematicEvalView: View {

    var body: some View {
        //NavigationView {
        VStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("The AAFP's Advanced Life Support in Obstetrics (ALSO) course has a useful mnemonic for systematic eveluation of EFM tracings, 'DR. C. BRAVADO' \n\n\t\tD - determine\n\t\tR - risk\n\n\t\tC - contractions\n\n\t\tB - baseline\n\t\tR - rate\n\t\tA\n\t\tV - variability\n\t\tA - accelerations\n\t\tD - decelerations\n\t\tO - overall impressions")
                    .font(.body)
                Text("ACOG recommends the same evaluation approach:\n- elements of EFM evaluation necessary for interpretation are contraction pattern, baseline variability, accelerations, develerations, and changes or trends of FHR patterns over time\n- tracing should be interpreted within context of the clinicla circumstances\n- patterns change over time, FHR must be regularly re-evaluated.")
                .font(.body)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: "Systematic Eval"), displayMode: .inline)
    //}
         }
}

struct SystematicEvalView_Previews: PreviewProvider {
    static var previews: some View {
        DefinitionView(def_obj: definitionJSON[0])
    }
}
