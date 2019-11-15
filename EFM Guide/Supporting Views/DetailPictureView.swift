//
//  CircleImage.swift
//  EFM
//
//  Created by Jesse Struck on 11/9/19.
//  Copyright © 2019 Jesse Struck. All rights reserved.
//

import SwiftUI

struct DetailPictureView: View {
    @State var scale: CGFloat = 1
    var image: Image
  
    var body: some View {
        ScrollView(.horizontal, content: {
            image
            .resizable()
            .scaleEffect(scale)
            
            .scaledToFit()//.frame(width: 100, height: 100)
            // 3.
            .gesture(MagnificationGesture()
                .onChanged { value in
                    self.scale = value.magnitude
                }
            )
            //.resizable()
                //.clipShape(Circle())
                //.overlay(Circle().stroke(Color.white, lineWidth: 4))
                //.shadow(radius: 10)
        }) .offset(CGSize(width:0, height: 0))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPictureView(image: Image("ctx"))
    }
}
