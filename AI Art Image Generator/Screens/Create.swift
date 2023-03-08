//
//  Create.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct Create: View {
    @State var goToGeneratedResutsPage = false

    
    var body: some View {
        VStack{
            // Navigation link to next page
            NavigationLink(destination: NavigationLazyView(GeneratedResults()), isActive: $goToGeneratedResutsPage) {
                EmptyView()
            }
            
            Text("Create Artwork")
            Button {
//                isShowingNewScreen.toggle()
                self.goToGeneratedResutsPage.toggle()
            } label: {
                Text("Generate")
            }
        }
//        .fullScreenCover(isPresented: $isShowingNewScreen) {
//           GeneratedResults()
//        }
       

    }
}

struct Create_Previews: PreviewProvider {
    static var previews: some View {
        Create()
    }
}
