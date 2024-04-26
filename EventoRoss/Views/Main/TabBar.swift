//
//  TabBar.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct TabBar: View {
    @EnvironmentObject var viewModel: EventoViewModel
    var body: some View {
        TabView{
            HomeViews()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView1()
                    .tabItem {
                        Label("Categories", systemImage: "square.fill.text.grid.1x2")
                    }
            
            FavoritesView()
                .navigationTitle("Mis Favoritos")
                .environmentObject(viewModel)
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }
                
                
            UserView()
                .tabItem {
                    Label("Usuario", systemImage: "person")
                        
                }
        }
        
    }
}

#Preview {
    TabBar()
        .environmentObject(EventoViewModel())
}
