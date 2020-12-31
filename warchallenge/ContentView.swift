//
//  ContentView.swift
//  warchallenge
//
//  Created by Stephen on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                HStack {
                    Image(playerCard)
                        .padding()
                    Image(cpuCard)
                        .padding()
                }
                Spacer()
                Button(action:{
                    //generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    //update score
                    playerScore += 1
                    cpuScore += 1
                }) {
                    Image("dealbutton").padding()
                }
                Spacer()
                HStack {
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    } .padding()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }.padding()
                }
               Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .ignoresSafeArea()
    }
}
