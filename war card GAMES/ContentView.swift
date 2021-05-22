//
//  ContentView.swift
//  war card GAMES
//
//  Created by cloud_vfx on 11/05/21.
//

import SwiftUI

struct ContentView: View {
    
        
@State var playercard = "card4"
@State var cpucard = "card6"
@State var playerscore = 0
@State var cpuscore = 0
    
    var body: some View {
        
        ZStack{
            Image("green4")
                .resizable(resizingMode: .stretch).ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo1")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let playerrand = Int.random(in: 1...13)
                    let cpurand = Int.random(in:1...13 )
                    
                    playercard = "card"+String(playerrand)
                    cpucard = "card"+String(cpurand)
                   
                    if playercard > cpucard {
                        playerscore += 1
                    }
                    else {
                        cpuscore += 1
                    }
                    
                }, label: {
                        Image("logos")                })
               
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player_ejrnepppppp")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerscore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(cpuscore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
