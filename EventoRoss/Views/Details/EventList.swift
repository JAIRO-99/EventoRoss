//
//  EventList.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 25/04/24.
//

import SwiftUI

struct EventList: View {
    
   var product: [EventoModel] = [
    EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Princesa", description: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Niño Futbol", description: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
    EventoModel( name: "Decoración Vaca Lola", description: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración 15 Años", description: "Para tu princesa", precio: 230.00, image: "decoracion_6", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración 15 Años", description: "Para princesas", precio: 200.00, image: "decoracion_7", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración Bruno", description: "Para tu engreida", precio: 180.00, image: "decoracion_8", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración PawPatrol Niñas", description: "La egreida del hogar", precio: 210.00, image: "decoracion_9", favorites: false, category: "Niñas")
]
    
    var body: some View {
            
        VStack {
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

#Preview {
    ScrollView{
        EventList()
    }
}
