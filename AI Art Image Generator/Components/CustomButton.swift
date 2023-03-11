//
//  CustomButton.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight:  50)
                        .contentShape(Rectangle())
                        .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
                        .background(configuration.isPressed ? Color(.black).opacity(0.5) : Color(.black))
                        .cornerRadius(15)
    }
}

struct PremiumButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight:  40)
                        .contentShape(Rectangle())
                        .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.black)
                        .background(configuration.isPressed ? Color(.white).opacity(0.5) : Color(.white))
                        .cornerRadius(15)
    }
}

struct SettingsButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: .infinity, height: 50)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(.black), lineWidth: 2))
            .foregroundColor(configuration.isPressed ? Color(.black).opacity(0.5) : Color(.black))
    }
}

struct PayWallSubmitBtnStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight:  50)
                        .contentShape(Rectangle())
                        .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.black)
                        .background(configuration.isPressed ? Color(.white).opacity(0.5) : Color(.white))
                        .cornerRadius(15)
    }
}

//struct someView: View {
//    var body: some View{
//        CustomButton()
//    }
//}
//
//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        someView()
//    }
//}
