//
//  ContentView.swift
//  SlotMachine
//
//  Created by Dhrumil Malaviya on 2021-01-21.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            //MARK:- Backgroud
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            //MARK:- Interface
            VStack (alignment: .center, spacing: 5)
                {
                
                //MARK:- HEADER
                        LogoView()
                        Spacer()
                
                //MARK:- SCORE
                HStack {
                    HStack
                    {
                        Text("Your\nCoins".uppercased())
                            .scoreLableStyle()
                            .multilineTextAlignment(.trailing)
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifiers())
                    }//:HStack
                    .modifier(ScoreContainerModifiers())
                    
                    Spacer()
                    
                    HStack
                    {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifiers())
                        
                        Text("High\nScore".uppercased())
                            .scoreLableStyle()
                            .multilineTextAlignment(.trailing)
                       
                    }//:HStack
                    .modifier(ScoreContainerModifiers())
                }//:HSTACK
                
//MARK:- SLOT MACHINE
                    
                VStack(alignment: .center, spacing:5)
                {
                    //MARK:- Reel  1
                    
                    ZStack {
                        ReelView()
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifiers())
                    }
                    
                    HStack(alignment: .center, spacing: 0)
                    {
                        //MARK:- Reel 2
                        ZStack {
                            ReelView()
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifiers())
                        }
                        
                        Spacer()
                        //MARK:- Reel 3
                        
                        ZStack {
                            ReelView()
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifiers())
                        }
                    }.frame(maxWidth:500)
                    
                    //MARK:- Spin Button
                    
                    Button(action:{print("Spin the whele")})
                    {
                        Image("gfx-spin")
                            .resizable()
                            .modifier(ImageModifiers())
                    }
                    
                    
                    
                }.layoutPriority(2)
                
                
//MARK:- FOOTER
                Spacer()
                
                HStack
                {
                    //MARK:- BET chips
                    HStack (alignment:.center,spacing :5) //20 and Chips
                    {
                        
                        Button(action:{print("bet coins")})
                        {
                            Text("20")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .modifier(BetNumberModifier())
                               
                        }.modifier(BetCapsuleModifier())
                        
                        Image("gfx-casino-chips")
                            .resizable()
                            .opacity(0)
                            .modifier(CasionChipModifiers())
                            
                    }//HStack bet chips
                    
                    
                    Spacer()
                    
                    HStack (alignment:.center,spacing :5) //20 and Chips
                    {
                        Image("gfx-casino-chips")
                            .resizable()
                            .modifier(CasionChipModifiers())
                        
                        Button(action:{print("bet 10 coins")})
                        {
                            Text("10")
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .modifier(BetNumberModifier())
                               
                        }.modifier(BetCapsuleModifier())
                        
                       
                            
                    }//HStack
                    
                }//HStack
                
                }//:VSTACK
            .overlay(
            //Reset Button
                Button(action:{print("Reset")})
                {
                    Image(systemName: "arrow.2.circlepath.circle")
                }.modifier(ButtonModifiers())
                .edgesIgnoringSafeArea(.all)
                ,alignment: .topLeading
                
            )
            .overlay(
            //Info Button
                Button(action:{print("QUIT")})
                {
                    Image(systemName: "x.circle")
                }.modifier(ButtonModifiers())
                .edgesIgnoringSafeArea(.all)
                ,alignment: .topTrailing
                
            )
            .padding()
            .frame(maxWidth:720)
            //MARK:- Popup
            
                .padding()
        }//ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
