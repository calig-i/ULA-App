//
//  MainTabView.swift
//  ULA App
//
//  Created by Jarek  on 30/04/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Calendar")
                .tabItem { 
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            
            Text("Find Us")
                .tabItem {
                    Image(systemName: "map")
                    Text("Find Us")
                }
            
            Text("Community")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Community")
                }
            
            Text("Profile")
                .tabItem { 
                    Image(systemName: "person")
                    Text("Profile")
                }
            
        }
        
        // tab bar color
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(Color.tealGreen)
        }
    
        .accentColor(.white)

    }
}

#Preview {
    MainTabView()
}
