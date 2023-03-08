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
        VStack{
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GenerateImageDetails()), isActive: $goToImageDetailsPage) {
                EmptyView()
            }
            
            
            Text("Inspiration grid will show here")
            Button {
                self.goToImageDetailsPage.toggle()
            } label: {
                Text("select Image")
            }
        }
    }
}

struct Inspiration_Previews: PreviewProvider {
    static var previews: some View {
        Inspiration()
    }
}
