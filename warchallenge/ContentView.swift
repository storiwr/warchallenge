//
//  ContentView.swift
//  warchallenge
//
//  Created by Stephen on 12/27/20.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                        .padding()
                    Image("card4")
                        .padding()
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("dealbutton").padding()
                }
                Spacer()
                HStack {
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    } .padding()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding()
                        Text("0")
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
