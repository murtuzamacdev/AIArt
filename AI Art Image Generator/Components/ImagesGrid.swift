//
//  ImagesGrid.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 11/03/23.
//

import SwiftUI

struct ImagesGrid: View {
    let imageUrls = [
        "https://picsum.photos/600/300",
        "https://picsum.photos/600/600",
        "https://picsum.photos/250/250",
        "https://picsum.photos/400/400",
        "https://picsum.photos/350/350",
        "https://picsum.photos/500/500",
        "https://picsum.photos/150/300",
        "https://picsum.photos/450/450",
        "https://picsum.photos/275/275",
        "https://picsum.photos/470/470",
        "https://picsum.photos/450/470",
        "https://picsum.photos/460/470",
        "https://picsum.photos/490/470",
        "https://picsum.photos/550/470",
        "https://picsum.photos/560/470",
        "https://picsum.photos/590/470",
    ]
    
    var columns: [GridItem] =
    Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(imageUrls, id: \.self) { imageUrl in
                Group {
                    if let url = URL(string: imageUrl) {
                        if #available(iOS 15.0, *) {
                            GeometryReader{ gr in
                                VStack{
                                    AsyncImage(url: url) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                        case .success(let image):
                                            image
                                                .resizable()
                                                .aspectRatio(1,contentMode: .fill)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                                .clipped()
                                                .overlay(
                                                    VStack{
                                                        Spacer()
                                                        VStack{
                                                            Text("Hello").font(.subheadline).fontWeight(.medium).padding(.vertical, 5.0).frame(maxWidth: .infinity)
                                                        }.background(Color("lightGrayBG").opacity(0.9))
                                                        
                                                        
                                                    }
                                                )
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
                                }.frame(width: gr.size.width, height: gr.size.height)
                                
                            }
                            
                        } else {
                            // Fallback on earlier versions
                            GeometryReader{gr in
                                VStack {
                                    URLImage(url: imageUrl)
                                        .frame(width: gr.size.width, height: gr.size.height)
                                        .aspectRatio(1,contentMode: .fill)
                                        .clipped()
                                    
                                }.overlay(
                                    VStack{
                                        Spacer()
                                        VStack{
                                            Text("Hello").font(.subheadline).fontWeight(.medium).padding(.vertical, 5.0).frame(maxWidth: .infinity)
                                        }.background(Color("lightGrayBG").opacity(0.9))
                                        
                                        
                                    }
                                )
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                                .frame(width: gr.size.width, height: gr.size.height)
                            }
                            
                        }
                    } else {
                        Text("Invalid URL")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .aspectRatio(contentMode: .fill)
            }
        }.padding(.horizontal, 0)
    }
}

struct URLImage: View {
    let url: String
    
    @ObservedObject private var imageLoader = ImageLoader()
    
    var body: some View {
        Image(uiImage: imageLoader.image ?? UIImage(systemName: "photo")!)
            .resizable()
            .scaledToFill()
            .onAppear {
                imageLoader.loadImage(from: url)
            }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    func loadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }.resume()
    }
}

struct ImagesGrid_Previews: PreviewProvider {
    static var previews: some View {
        ImagesGrid()
    }
}
