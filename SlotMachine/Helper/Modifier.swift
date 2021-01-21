//
//  Modifier.swift
//  SlotMachine
//
//  Created by Dhrumil Malaviya on 2021-01-21.
//

import Foundation
import SwiftUI

struct ShadowModifiers: ViewModifier
{
    func body(content:Content)-> some View
    {
        content.shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6 )
    }
}

struct ButtonModifiers: ViewModifier
{
    func body(content:Content)-> some View
    {
        content.font(.title)
            .accentColor(Color.white)
    }
}
    struct ScoreNumberModifiers :ViewModifier
    {
        func body(content: Content) -> some View {
            content.shadow(color: Color("ColorTranparentBlack"), radius: 0, x: 0, y: 3)
            .layoutPriority(1)
        }
    
}
struct ScoreContainerModifiers:ViewModifier
{
    func body(content:Content)->some View
    {
        content.padding(.vertical,4)
            .padding(.horizontal,16)
            .frame(minWidth:128)
            .background(Capsule()
                            .foregroundColor(Color("ColorTransparentBlack")))
            
    }
}

struct ImageModifiers:ViewModifier
{
    func body(content:Content) -> some View
    {
    content.scaledToFit()
    .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130, idealHeight: 190, maxHeight: 100, alignment: .center)
    .modifier(ShadowModifiers())
    }
}

struct BetNumberModifier:ViewModifier
{
    func body(content:Content)-> some View
    {
        content.font(.system(.title,design:.rounded))
            .padding(.vertical,5)
            .frame(width:90)
            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 3)
    }
}

struct BetCapsuleModifier :ViewModifier
{
    func body(content:Content)-> some View
    {
        content.background(
            Capsule()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)))
            .padding(3)
            .background(
            Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .bottom, endPoint: .top)))
            
            
    }
}

struct CasionChipModifiers:ViewModifier
{
    func body(content:Content) -> some View
    {
        content.scaledToFit()
        .frame(height:64)
        .animation(.default)
        .modifier(ShadowModifiers())
    }
    
}
