//
//  ProductCardView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct ProductCardView: View {
    @State var product: EventoModel
    @EnvironmentObject var viewModel: EventoViewModel
    let size: CGFloat
    @State private var favorites = false
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing){
                ZStack(alignment: .bottom){
                    Image(product.image)
                        .resizable()
                        .frame(width: size, height: 300 * (size/210))
                        .scaledToFit()
                        .cornerRadius(20)
                        
                       
                    VStack(alignment: .leading){
                        Text(product.name)
                            .bold()
                        HStack{
                            ForEach(0..<4){stars in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .frame(width:5)
                            }
                            Spacer()
                            Text("$ \(product.precio, specifier: "%.2f")")
                            
                            
                        }
                    }
                    .padding()
                    .frame(width: size, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
                    Button{
                        viewModel.addCart(item: product)
                    }label: {
                        Image(systemName: "plus")
                            .padding()
                            .foregroundColor(.blue)
                            .background(Color(red: 100.937, green: 0.937, blue: 0.937))
                            .clipShape(Circle())
                            .bold()
                    }
                    .padding(10)
            }
        }
    }
}

#Preview {
    ProductCardView(product: EventoModel.example, size: 200)
        .environmentObject(EventoViewModel())
}
