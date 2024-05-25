//
//  CategoriesView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct CategoriesView1: View {
    @EnvironmentObject var viewModel: EventoViewModel
    var product = EventoModel.itemDecorations
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(Color(red: 1.000, green: 0.937, blue: 0.937))
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack(alignment: .leading){
                        ForEach(Category.allCases){category in
                            HStack{
                                NavigationLink{
                                    
                                    EventList(product: product.filter{$0.category == category.rawValue})
                                        .foregroundColor(.black)
                                        .navigationTitle(category.rawValue)
                                }label: {
                                    Label(category.rawValue, systemImage: "chevron.right")
                                        .font(.headline)
                                        
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white)
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top)
                    
                }
            }
            .navigationTitle("Categorias")
        }
    }
}

#Preview {
    CategoriesView1()
        .environmentObject(EventoViewModel())
}
