//
//  DefaultImageView.swift
//  CourseList
//
//  Created by Henry Calderon on 7/9/24.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack{
            ProgressView()
                .padding()
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom,3)
            Text("Grabbing the Image...")
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
        .background {
            Color.gray
                .opacity(0.5)
        }
    }
}

#Preview {
    DefaultImageView()
}
