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
       
       var body: some View {
           
           NavigationView{
               TabView(selection: $selectedTab) {
                   Create()
                       .tabItem {
                           Image(systemName: "1.circle")
                           Text("Create")
                       }
                       .tag(0)
                   
                   Inspiration()
                       .tabItem {
                           Image(systemName: "2.circle")
                           Text("Inspiration")
                       }
                       .tag(1)
                   
                   Settings()
                       .tabItem {
                           Image(systemName: "3.circle")
                           Text("Settings")
                       }
                       .tag(2)
               }
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
