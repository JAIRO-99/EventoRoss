//
//  FavoritesView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct CarItemView: View {
    @EnvironmentObject var viewModel: EventoViewModel
    
    var body: some View {
       
        CarProductsView()
            .environmentObject(viewModel)
    }
}

#Preview {
    CarItemView()
        .environmentObject(EventoViewModel())
}
