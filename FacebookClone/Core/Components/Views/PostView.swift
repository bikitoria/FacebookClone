//
//  PostView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-07-01.
//

import SwiftUI
import AVKit

struct PostView: View {
    private var facebookBlue = Color(red: 26/255, green: 103/255, blue: 178/255)
    
    private var isVideo: Bool
    
    init(isVideo:Bool) {
        self.isVideo = isVideo
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0){
                    Text("Louise Belcher")
                        .font(.system(size: 14, weight: .semibold))
                    HStack(spacing: 5){
                        Text("1 d")
                        Circle()
                            .frame(width: 2, height: 2)
                            .fontWeight(.bold)
                        Image(systemName: "globe")
                    }
                    .font(.system(size: 12))
                    .foregroundStyle(facebookBlue)
                }
                Spacer()
                HStack(spacing:24){
                    Image(systemName: "ellipsis")
                    Image(systemName: "xmark")
                    
                }
                .foregroundStyle(Color(.darkGray))
                .fontWeight(.bold)
            }
            .padding(.horizontal)
            Text("streets")
                .padding(.horizontal)
            if isVideo{
                if let url = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"){
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: 400)
                }
                
            }else{
                Image("carPost")
                    .resizable()
                    .scaledToFill()
            }
            
            HStack(spacing: 3){
                Image("like")
                    .resizable()
                    .frame(width: 18, height: 18)
                Text("5")
                Spacer()
                Text("3 comments")
                Text("•")
                    .fontWeight(.bold)
                Text("2 shares")
            }
            .padding(.horizontal)
            .font(.system(size: 12))
            .foregroundStyle(facebookBlue)
            Divider()
                .background(.white.opacity(0.5))
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image(systemName: "message")
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image("message-icon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Send")
                }
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                Spacer()
            }
            .font(.system(size: 12))
            .foregroundStyle(facebookBlue)
        }
    }
}


#Preview {
    PostView(isVideo: false)
}
