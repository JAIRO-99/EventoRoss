//
//  CarView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct CarView: View {
    @EnvironmentObject var viewModel: EventoViewModel
    var products: EventoModel
    var body: some View {
            
        HStack(spacing: 15){
            Image(products.image)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .background(.gray)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10){
                Text(products.name)
                    .font(.headline)
                
                Text("$ \(products.precio, specifier: "%.2f")")
            }
            
            Spacer()
            Divider()
        
            Image(systemName: "trash")
                    .foregroundColor(.red)
                    .font(.title2)
                    .onTapGesture {
                        viewModel.deleteItem(product: products)
                    }
            
        }
        .padding(.horizontal)
       // .background(.white)
        .cornerRadius(12)
        .frame(width: .infinity)
        .padding()
    }
}

#Preview {
    CarView(products: EventoModel.example)
        .environmentObject(EventoViewModel())
}
