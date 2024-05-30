//
//  EventoViewModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

// CON ESTE TRABAJAR PARA AGREGAR COREDATA , ESTA OK LA APP
import Foundation
import SwiftUI
import CoreData


final class EventoViewModel: ObservableObject{
    

    
    private (set)var eventos: [EventoModel] = []
    private (set)var totalPrice = 0.0
    
    init(){
        eventos = decodeAllEventos()
    }   

    @MainActor
    func addCart(item: EventoModel){
        if !eventos.contains(where: { model in
            model.id == item.id
        }){
            eventos.append(item)
            totalPrice += item.precio
        }
      encodeAndSaveEventos()
    }
    func deleteItem(product: EventoModel){
        eventos.removeAll(where: {$0.id == product.id})
        totalPrice -= product.precio
       encodeAndSaveEventos()
    }
    func favoritesValue (favorite: Binding<EventoModel> ){
        //   favorite.wrappedValue.favorites = !favorite.wrappedValue.favorites
    }
    
    func encodeAndSaveEventos(){
        if let encoded = try? JSONEncoder().encode(eventos){
            UserDefaults.standard.set(encoded, forKey: "evento")
        }
    }
    
    func decodeAllEventos() -> [EventoModel]{
        if let data = UserDefaults.standard.object(forKey: "evento") as? Data{
            if let evento = try? JSONDecoder().decode([EventoModel].self, from: data){
                return evento
            }
        }
        return []
    }
}
