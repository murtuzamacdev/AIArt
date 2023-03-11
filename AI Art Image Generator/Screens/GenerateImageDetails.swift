//
//  GenerateImageDetails.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct GenerateImageDetails: View {
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25.0){
            
//            Text("Generated Image")
//                .font(.title)
//                .fontWeight(.bold)
//                .multilineTextAlignment(.leading)
            
            
            if #available(iOS 15.0, *) {
                VStack{
                    AsyncImage(url: URL(string: "https://picsum.photos/700/600")) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                               
                        case .failure:
                            Image(systemName: "exclamationmark.icloud.fill")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                }.frame( maxWidth: .infinity, minHeight: 100)
                
            } else {
                // Fallback on earlier versions
                VStack {
                    URLImage(url: "https://picsum.photos/300/150")
                        .scaledToFit().cornerRadius(15)
                }
            }
  
         
            
            VStack(alignment: .leading, spacing: 5.0){
                Text("Generated from Prompt")
                    .font(.subheadline)
                
                Text("Image of a own with black background wth fruites on the side of it").font(.body).fontWeight(.semibold)
            }
            
            Spacer()
            
            Button {
//                self.goToGeneratedResutsPage.toggle()
            } label: {
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Share").fontWeight(.bold)
                }
                
            }.buttonStyle(CustomButtonStyle())
            
            
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading).navigationTitle("Generated Art")
    }
}

struct GenerateImageDetails_Previews: PreviewProvider {
    static var previews: some View {
        GenerateImageDetails()
    }
}
