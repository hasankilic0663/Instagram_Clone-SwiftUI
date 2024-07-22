//
//  PostGridView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 22.07.2024.
//

import SwiftUI

struct PostGridView: View {
    
    var posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),// 3 tane sütun yaptık
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1)
    ]
    
    
    private let imageDimension : CGFloat = (UIScreen.main.bounds.width / 3) - 1
    //ekranı olcuyoruz
    
    
    var body: some View {
        //POSTS
     
        LazyVGrid(columns: gridItems, spacing: 1){
            ForEach(posts){ post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension,height: imageDimension)
                    .clipped()//kenarlarından kırptı duzgun yaotı
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POST)
}
