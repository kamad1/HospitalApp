//
//  ContentView.swift
//  HospitalApp
//
//  Created by Jedi on 07.08.2025.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedTab: String = ""
    var body: some View {
   
        TabView(selection: $selectedTab) {
            NavigationView {
                HomeView()
            }
                .tag("главная")
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }
        
                
                Text("Приемы")
                    .tag("приемы")
                    .tabItem {
                        Image(systemName: "folder")
                        Text("Приемы")
                    }
                
                Text("Чат")
                    .tag("чат")
                    .tabItem {
                        Image(systemName: "message")
                        Text("Чат")
                    }
                    .badge(1)
                    
                
                Text("Профиль")
                    .tag("профиль")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                        
                    }
            }


        
       
            }
}

#Preview {
    TabBar()
}
