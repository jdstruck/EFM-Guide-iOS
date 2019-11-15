//
//  ContentView.swift
//  EFM Guide
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 1.
    @State var scale: CGFloat = 1.0

    var body: some View {
       // 2.
       Image("apple-logo")
        //.resizable()
        //.scaleEffect(scale)
        //.frame(width: 100, height: 100)
        // 3.
        .gesture(MagnificationGesture()
            .onChanged { value in
                self.scale = value.magnitude
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
