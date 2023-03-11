//
//  GeneratedResults.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct GeneratedResults: View {
    @State var goToImageDetailsPage = false
    
    
    
//    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 25.0){
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GenerateImageDetails()), isActive: $goToImageDetailsPage) {
                EmptyView()
            }
            
            
//            Text("Results")
//                .font(.title)
//                .fontWeight(.bold)
//                .multilineTextAlignment(.leading)
            
            ScrollView {
                ImagesGrid()
            }
            
            
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading).navigationTitle("Results")
    }
}

struct GeneratedResults_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedResults()
    }
}
