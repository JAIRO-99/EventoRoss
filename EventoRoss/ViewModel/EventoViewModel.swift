//
//  EventoViewModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import Foundation
import SwiftUI
import SwiftData

@Observable
final class EventoViewModel: ObservableObject{
    
    
    
     private (set)var eventos: [EventoModel] = []
     private (set)var totalPrice = 0.0
    
   
    
    
    func addCart(item: EventoModel){
        eventos.append(item)
        totalPrice += item.precio
    }
    
    func deleteItem(product: EventoModel){
        eventos = eventos.filter{$0.id != product.id}
       // eventos.removeAll(where: {$0.id == id})
        totalPrice -= product.precio
    }
    func favoritesValue (favorite: Binding<EventoModel> ){
        
        
     //   favorite.wrappedValue.favorites = !favorite.wrappedValue.favorites
    }
}

