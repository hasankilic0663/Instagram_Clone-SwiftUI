//
//  IGTextFieldModifier.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 19.07.2024.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content : Content) -> some View {
        content
            .font(.subheadline)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(6)
            .padding(.horizontal,24)
    }
}
