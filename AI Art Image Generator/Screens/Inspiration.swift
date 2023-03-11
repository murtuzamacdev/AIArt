//
//  Inspiration.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct Inspiration: View {
    @State var goToImageDetailsPage = false
    
    var body: some View {
        VStack(alignment: .leading){
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GenerateImageDetails()), isActive: $goToImageDetailsPage) {
                EmptyView()
            }
            
            
//            Text("Prompt Inspiration")
//                .font(.title)
//                .fontWeight(.bold)
//                .multilineTextAlignment(.leading)
            
            ScrollView {
                ImagesGrid()
            }
            
            
        }.padding(.horizontal).frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading)
    }
}

struct Inspiration_Previews: PreviewProvider {
    static var previews: some View {
        Inspiration()
    }
}
