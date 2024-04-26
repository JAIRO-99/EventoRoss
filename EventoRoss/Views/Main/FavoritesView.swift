//
//  FavoritesView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var viewModel: EventoViewModel
    
    var body: some View {
       
        FavoritiesView()
            .environmentObject(viewModel)
    }
}

#Preview {
    FavoritesView()
        .environmentObject(EventoViewModel())
}
