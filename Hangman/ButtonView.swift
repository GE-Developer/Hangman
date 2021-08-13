//
//  ButtonView.swift
//  Hangman
//
//  Created by Mikhail Bukhrashvili on 28.06.2021.
//

import SwiftUI

struct ButtonView: View {
    private let viewSize = UIScreen.main.bounds.width - 48
    let text: String
    let color: Color
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text(text)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: viewSize / 150)
                .frame(width: viewSize / 2, height: 70)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .background(color)
                .cornerRadius(viewSize / 20)
                .font(.system(size: viewSize / 14))
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: viewSize / 70)
                .overlay(
                    RoundedRectangle(cornerRadius: viewSize / 20)
                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: viewSize / 180)
                )
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Подсказка", color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
    }
}
