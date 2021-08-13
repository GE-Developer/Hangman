//
//  ContentView.swift
//  Hangman
//
//  Created by Mikhail Bukhrashvili on 27.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var word = "HANGMAN"
    @State private var typedLetter = ""
    
    private var letters: [String] {
        var a: [String] = []
        for i in word {
            a.append(String(i))
        }
        return a
    }
    
    var body: some View {
        VStack {
            Spacer()
            Divider()
                .padding()
            
            
            HStack {
                ForEach(0..<letters.count) { i in
                    
                    LetterView(
                        letterCount: Double(word.count),
                        letter: $typedLetter,
                        text: letters[i]
                    )
                    
                }
            }
            .padding()
            
            Divider()
                .padding()
            
            HStack {
                ButtonView(text: "Подсказка", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                Spacer()
                ButtonView(text: "Сдаться", color: Color(#colorLiteral(red: 0.7923928463, green: 0.1185346884, blue: 0.006846102656, alpha: 1)))
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


