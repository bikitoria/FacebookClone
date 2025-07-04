//
//  ProfileOptionView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-01.
//

import SwiftUI

struct ProfileOptionsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            HStack(spacing: 24){
                Text("Posts")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
                    .padding(.horizontal)
                    .padding(.vertical, 7)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Text("Photos")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.darkGray))
                Text("Reels")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.darkGray))
            }
            .padding(.horizontal)
            Divider()
        }
    }
}



