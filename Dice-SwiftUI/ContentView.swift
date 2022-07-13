//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Павел Черноок on 12.07.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber: 1)
                    DiceView(diceNumber: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(.red)
                Divider()
            }
        }
    }
}

struct DiceView: View {
    
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 125, height: 125)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
