//
//  URLImage.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 21/09/2020.
//

import SwiftUI
import Combine

struct URLImage: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image:UIImage = UIImage()

    init(withURL url:URL) {
        imageLoader = ImageLoader(url: url)
    }

    var body: some View {

            Image(uiImage: image)
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(withURL: URL(string: "https://avatars3.githubusercontent.com/u/1804568")!)
    }
}
