//
//  ContentView.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State var showPayWall = true
    
    func getNavitationTitleForTab() -> String{
        switch selectedTab {
        case 0: return "Create Artwork"
            
        case 1:
            return "Prompt Inspiration"
        case 2:
            return "Settings"
        default:
            return "Create Artwork"
        }
    }
       
       var body: some View {
           
           NavigationView{
               TabView(selection: $selectedTab) {
                   Create()
                       .tabItem {
                           if #available(iOS 16.0, *) {
                               Image(systemName: "theatermask.and.paintbrush.fill")
                           }else{
                               Image(systemName: "paintbrush.fill")
                           }
                           
                           Text("Create")
                       }
                       .tag(0)
                   
                   Inspiration()
                       .tabItem {
                           Image(systemName: "lightbulb.circle.fill")
                           Text("Inspiration")
                       }
                       .tag(1)
                    
                   Settings()
                       .tabItem {
                           Image(systemName: "gearshape.fill")
                           Text("Settings")
                       }
                       .tag(2)
               }.navigationTitle(self.getNavitationTitleForTab())
           }.fullScreenCover(isPresented: $showPayWall) {
                      PayWall()
                   }
           
           
       }
}

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
