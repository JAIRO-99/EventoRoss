//
//  EventList.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 25/04/24.
//

import SwiftUI

struct EventList: View {
    
    var product = EventoModel.itemDecorations
   
    var body: some View {
        
        VStack (alignment: .leading){
            ZStack{
                Color("piel")
                    .ignoresSafeArea()
                ScrollView{
                    HStack{
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)]){
                            
                            ForEach(product){ evento in
                                NavigationLink{
                                    ItemDetailViews(itemProducts: evento)
                                }label:{
                                    ProductCardView(product: evento, size: 180)
                                }
                            }
                            
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollView{
        EventList()
    }
}
