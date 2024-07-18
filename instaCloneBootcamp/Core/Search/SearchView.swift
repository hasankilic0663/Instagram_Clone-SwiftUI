//
//  SearchView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 18.07.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id:\.self){ user in
                        HStack{
                            Image("hasan")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment:.leading){
                                Text("hkilichusein")
                                    .fontWeight(.semibold)
                                Text("Hasan Hüseyin Kılıç")
                                
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                     
                        
                    }
                }
                .searchable(text: $searchText,prompt: "Search...")//bu metot yukarıda arama butonu yapıyo bındıng verı olarak searchtext gırdık ve promp  yerıde boısta ıken ne yazsın dıye
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
