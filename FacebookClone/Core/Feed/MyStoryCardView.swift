//
//  MyStoryCardView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-30.
//

import SwiftUI

struct MyStoryCardView: View {
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(Color(.systemGray6))
                .frame(width: 100, height: 170)
            Image("profilePic")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 110)
                .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 15, topTrailing: 15))) // rounded top and sharp bottom
            VStack(spacing: 5){
                Spacer()
                    .frame(height: 90)
                Image(systemName: "plus")
                    .padding(5)
                    .background(.blue)
                    .clipShape(Circle())
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    .overlay{
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth:3)
                    }
                
                VStack(spacing: 0){
                    Text("Create")
                    Text("Story")
                }
                .font(.system(size: 12, weight: .bold))
            }
        }
        .padding(.leading)
    }
}

#Preview {
    MyStoryCardView()
}
