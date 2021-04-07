//
//  ContentView.swift
//  Memorize
//
//  Created by rohitwtbs on 06/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 0,content:{
            ForEach(0..<4,content: { index in
                CardView()
            })
        }
                       )
//        return Text("Hello there , world!")
//            .padding()
    }
}

struct CardView:View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke()
                Text("👻").font(Font.largeTitle)
            }
            else{
                RoundedRectangle(cornerRadius: 10).fill()
            }

            
        })
        .padding()
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
