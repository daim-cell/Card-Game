//
//  ContentView.swift
//  Card Game
//
//  Created by Daim Abbas Kazmi on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var p_card = "back"
    @State var cpu_card = "back"
    @State var p_score = 0
    @State var cpu_score = 0
    
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
                    Image(p_card)
                    Spacer()
                    Image(cpu_card)
                    Spacer()
                }
                Spacer()
                Button{
                    deal()
                }
                label:{
                    Image("button")
                }.foregroundColor(.black)
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(p_score))
                    }
                    .font(.title)
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpu_score))
                    }
                    .font(.title)
                Spacer()
                }
                Spacer()
            }
        }
    }
    
    func deal(){
        let playerNum = Int.random(in: 0..<13)+2
        let cpuNum = Int.random(in: 0..<13)+2
        
        if (playerNum>cpuNum){
            p_score += 1
        }
        else if(cpuNum>playerNum){
            cpu_score += 1
        }
        
        p_card = "card" + String(playerNum)
        cpu_card = "card" + String(cpuNum)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
