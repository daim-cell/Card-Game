//
//  ContentView.swift
//  Card Game
//
//  Created by Daim Abbas Kazmi on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("back")
                    Spacer()
                    Image("back")
                    Spacer()
                }
                Spacer()
                Button("Deal"){
                    
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text("0")
                    }
                    .font(.title)
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text("0")
                    }
                    .font(.title)
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
