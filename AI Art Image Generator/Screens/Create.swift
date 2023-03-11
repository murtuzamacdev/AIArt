//
//  Create.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct Create: View {
    @State var goToGeneratedResutsPage = false
    @State private var searchQuery: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GenerateImageDetails()), isActive: $goToGeneratedResutsPage) {
                EmptyView()
            }
//            
//            Text("Create Artwork")
//                .font(.title)
//                .fontWeight(.bold)
//                .multilineTextAlignment(.leading)
            
            
            VStack(alignment: .leading, spacing: 15.0){
                Text("Type your prompt here")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                HStack() {
                    //                Image(systemName: "magnifyingglass").foregroundColor(Color("lightGrayTxt"))
                    TextField("Enter Prompt Here", text: $searchQuery)
                }
                .padding(.horizontal)
                .frame(width: .none, height: 50)
                .contentShape(Rectangle())
                .foregroundColor(Color("lightGrayTxt"))
                .background(Color("lightGrayBG"))
                .cornerRadius(15)
                
                Button {
                    self.goToGeneratedResutsPage.toggle()
                } label: {
                    Text("Generate").fontWeight(.bold)
                }.buttonStyle(CustomButtonStyle())
            }
            
            VStack(alignment: .leading){
                Text("Select an art style").font(.subheadline).fontWeight(.semibold)
                ScrollView {
                    ImagesGrid()
                }
            }
        }.padding(.horizontal).frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading)
    }
}



struct Create_Previews: PreviewProvider {
    static var previews: some View {
        Create()
    }
}
