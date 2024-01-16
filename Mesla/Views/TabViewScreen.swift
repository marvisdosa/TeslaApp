//
//  TabViewScreen.swift
//  Mesla
//
//  Created by Marvis Ighedosa on 30/11/2023.
//

import SwiftUI

struct TabViewScreen: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            SettingScreen()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                    
                }
        }.previewLayout(.sizeThatFits)
    }
}

struct TabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen().previewLayout(.sizeThatFits)
    }
}
