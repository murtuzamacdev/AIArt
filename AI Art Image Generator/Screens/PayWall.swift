//
//  PayWal.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct PayWall: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("This is pay wall")
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Close")
        }
    }
}

struct PayWall_Previews: PreviewProvider {
    static var previews: some View {
        PayWall()
    }
}
