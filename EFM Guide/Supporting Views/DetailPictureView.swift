//
//  CircleImage.swift
//  EFM
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DetailPictureView: View {
    var image: Image

    var body: some View {
        ScrollView(.horizontal, content: {
            image
            //.resizable()
                //.clipShape(Circle())
                //.overlay(Circle().stroke(Color.white, lineWidth: 4))
                //.shadow(radius: 10)
        })
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPictureView(image: Image("turtlerock"))
    }
}
