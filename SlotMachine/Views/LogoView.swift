//
//  LogoView.swift
//  SlotMachine
//
//  Created by Dhrumil Malaviya on 2021-01-21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
            .padding(.horizontal)
            .padding(.vertical,20)
            .layoutPriority(1)
            .modifier(ShadowModifiers())
           
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
