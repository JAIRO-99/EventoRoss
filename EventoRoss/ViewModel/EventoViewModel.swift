//
//  EventoViewModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import Foundation
import SwiftUI

class EventoViewModel: ObservableObject{
    
    @Published private (set)var eventos: [EventoModel] = []
    @Published var totalPrice = 0.0
    
    init(){
       // eventos = EventoModel.all
    }
    
    func addCart(item: EventoModel){
        eventos.append(item)
        totalPrice += item.precio
    }
    
    func deleteItem(id: EventoModel){
        eventos = eventos.filter{$0.id != id.id}
       // eventos.removeAll(where: {$0.id == id})
        totalPrice -= id.precio
    }
    func favorites (favorite: Binding <EventoModel> ){
        favorite.wrappedValue.favorites = !favorite.wrappedValue.favorites
    }
}
