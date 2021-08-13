//
//  LetterView.swift
//  Hangman
//
//  Created by Mikhail Bukhrashvili on 27.06.2021.
//

import SwiftUI

struct LetterView: View {
    
    let letterCount: Double
    private var size: CGFloat {
        UIScreen.main.bounds.width / CGFloat(letterCount * 1.5)
    }
    
    @Binding var letter: String
    let text: String
    
    var body: some View {
        TextField(text, text: $letter)
            .frame(width: size, height: size)
            .background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
            .multilineTextAlignment(.center)
            .font(.system(size: size - 8))
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: size / 15)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(size / 4)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: size / 10)
            .overlay(
                RoundedRectangle(cornerRadius: size / 4)
                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: size / 70)
            )
    }
}

struct LetterView_Previews: PreviewProvider {
    static var previews: some View {
        LetterView(letterCount: 7, letter: .constant("Г"), text: "Г")
    }
}
