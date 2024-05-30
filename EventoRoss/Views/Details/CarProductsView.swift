//
//  FavoritiesView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct CarProductsView: View {
    @EnvironmentObject var viewModel: EventoViewModel
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(red: 100.937, green: 0.937, blue: 0.937)
                    .edgesIgnoringSafeArea(.all)
            ScrollView{
                
                if viewModel.eventos.count > 0 {
                    
                    ForEach(viewModel.eventos, id: \.id){ products in
                        CarView(products: products)
                    }
                    
                    HStack{
                        Text("Su precio total es:  ")
                            .font(.headline)
                        Spacer()
                        
                        Text("\(viewModel.totalPrice, specifier: "%.2f")")
                            .font(.headline)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color("brownOpacity"))
                    
                
                }else{
                    Spacer()
                    Spacer()
                    VStack(){
                        
                        Text("Aún no tienes Favoritos")
                            .bold()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(.brown.opacity(0.3))
                    .cornerRadius(20, corners: .topLeft)
                    .cornerRadius(20, corners: .bottomRight)
                    .padding()
                }
            }
            
            }
            .navigationTitle("Favoritos")
        }
        }
}
#Preview {
    CarProductsView()
        .environmentObject(EventoViewModel())
}
