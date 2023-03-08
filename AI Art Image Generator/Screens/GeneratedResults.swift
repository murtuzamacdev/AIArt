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
        
        VStack{
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GenerateImageDetails()), isActive: $goToImageDetailsPage) {
                EmptyView()
            }
            
            
            Text("Image generate grid will show here")
            Button {
                self.goToImageDetailsPage.toggle()
            } label: {
                Text("select Image")
            }
        }
        

      
    }
}

struct GeneratedResults_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedResults()
    }
}
