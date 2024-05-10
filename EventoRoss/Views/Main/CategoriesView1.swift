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
            ZStack {
                Color(red: 100.937, green: 0.937, blue: 0.937)
                    .edgesIgnoringSafeArea(.all)
                    
                List{
                    ForEach(Category.allCases){category in
                        NavigationLink{
                            ScrollView{
                                
                                EventList(product: product.filter{$0.category == category.rawValue})
                                    .foregroundColor(.black)
                                    
                            }
                            .navigationTitle(category.rawValue)
                        }label: {
                            Text(category.rawValue)
                        }
                        
                    }
                }
                
            }
            .navigationTitle("Categorias")
            .background(Color(red: 100.937, green: 0.937, blue: 0.937))
            
        }
      
    }
}

#Preview {
    CategoriesView1()
        .environmentObject(EventoViewModel())
}
