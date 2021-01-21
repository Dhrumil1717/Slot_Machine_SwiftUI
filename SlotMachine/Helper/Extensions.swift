//
//  Extensions.swift
//  SlotMachine
//
//  Created by Dhrumil Malaviya on 2021-01-21.
//

import SwiftUI

extension Text
{
    func scoreLableStyle()->Text
    {
        self.foregroundColor(Color.white)
            .font(.system(size: 10,weight:.bold,design:.rounded))
    }
    
    func scoreNumberStyle()->Text
    {
        self.foregroundColor(Color.white)
            .font(.system(.title,design:.rounded))
            .fontWeight(.heavy)
    }
}
