//
//  MainTabView.swift
//  FacebookClone
//
//  Created by Victoria Piquer on 2025-06-22.
//

import SwiftUI

struct MainTabView: View {
    @State private var tabSelection: Int = 0
    var body: some View {
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, tabSelection == 0 ? .fill: .none)
                }
                .onAppear {
                    tabSelection = 0
                }
            Text("Video")
                .tabItem {
                    Image(systemName: "play.tv")
                        .environment(\.symbolVariants, tabSelection == 1 ? .fill: .none)
                }
                .onAppear {
                    tabSelection = 1
                }
        

            FriendsView()
                .tabItem {
                    Image(systemName: "person.2")
                        .environment(\.symbolVariants, tabSelection == 2 ? .fill: .none)
                }
                .onAppear {
                    tabSelection = 2
                }
            
            MarketPlaceView()
                .tabItem {
                    Image("marketplace")
                        .environment(\.symbolVariants, tabSelection == 3 ? .fill: .none)
                }
                .onAppear {
                    tabSelection = 3
                }

            MenuView()
                .tabItem {
                    Image(systemName: "text.justify")
                        .environment(\.symbolVariants, tabSelection == 4 ? .fill: .none)
                }
                .onAppear {
                    tabSelection = 4
                }
        }
        .onAppear {
            UITabBar.appearance().barTintColor = .white
        }
    }
}

#Preview {
    MainTabView()
}
