//
//  ReelView.swift
//  SlotMachine
//
//  Created by Dhrumil Malaviya on 2021-01-21.
//

import SwiftUI

struct ReelView: View {
    var body: some View
    {
        
    Image("gfx-reel")
        .resizable()
        .modifier(ImageModifiers())
    }
}

struct ReelView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView().previewLayout(.fixed(width:220,height:220))
    }
}
