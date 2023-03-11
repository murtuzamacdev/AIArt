//
//  Settings.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20.0){
                HStack{
                    VStack(alignment: .leading){
                        Text("Enjoy ALL feature of the AI image generator")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Button {
                            //
                        } label: {
                            Text("Get Premium")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }.buttonStyle(PremiumButtonStyle())
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    Image("blackOwl").resizable()
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaledToFit()

                }.background(Color(.black)).cornerRadius(15).frame(maxWidth: .infinity, maxHeight: 200)
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Restore Purchase")
                            .font(.body)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }.buttonStyle(SettingsButtonStyle())
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Refer Friends")
                            .font(.body)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.all)
                }.buttonStyle(SettingsButtonStyle())
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Rate Us")
                            .font(.body)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.all)
                }.buttonStyle(SettingsButtonStyle())
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Terms of Use")
                            .font(.body)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.all)
                }.buttonStyle(SettingsButtonStyle())
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Privacy Policy")
                            .font(.body)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.all)
                }.buttonStyle(SettingsButtonStyle())
                
                

            }.padding(.horizontal).frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading)
        }
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
