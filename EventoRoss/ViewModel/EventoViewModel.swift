//
//  EventoViewModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

// CON ESTE TRABAJAR PARA AGREGAR COREDATA , ESTA OK LA APP
import Foundation
import SwiftUI
import SwiftData

@Observable
final class EventoViewModel: ObservableObject{
    
   
     private (set)var eventos: [EventoModel] = []
     private (set)var totalPrice = 0.0
  
    @MainActor
    func addCart(item: EventoModel){
        if !eventos.contains(where: { model in
            model.id == item.id
        }){
            eventos.append(item)
            totalPrice += item.precio
        }
    }
    func deleteItem(product: EventoModel){
        eventos.removeAll(where: {$0.id == product.id})
        totalPrice -= product.precio
    }
    func favoritesValue (favorite: Binding<EventoModel> ){
     //   favorite.wrappedValue.favorites = !favorite.wrappedValue.favorites
    }
}

