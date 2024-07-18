//
//  UserStatView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct UserStatView: View {
    let value : Int
    let title : String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.subheadline)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 10, title: "Posts")
}
